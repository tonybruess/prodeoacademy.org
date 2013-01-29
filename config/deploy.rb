require "bundler/capistrano"
require "rvm/capistrano"

set :rvm_ruby_string, "ruby-1.9.3-p194"
set :rvm_type, :user
set :rvm_path, "$HOME/.rvm"
set :rvm_bin_path, "$HOME/.rvm/bin"

set :application, "prodeo"
set :repository, "git@github.com:mrapple/prodeoacademy.org.git"

set :scm, :git
set :branch, 'temp'
set :deploy_to, "/home/deploy/apps/prodeo"
set :user, 'deploy'
set :port, 50210

server '69.162.80.34', :app, :db, :web, :primary => true # zeus

default_environment["RAILS_ENV"] = 'production'

set :rails_env, :production

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

namespace :deploy do
    task :update do
        update_code
        build_code
        symlink
    end

    task :build_code, :except => { :no_release => true } do
        run "#{latest_release}/bin/staticmatic build #{latest_release}"
    end
end
