require "whenever/capistrano"
require "bundler/capistrano"
require "rvm/capistrano"

set :rvm_ruby_string, "ruby-1.9.3-p194"
set :rvm_type, :user
set :rvm_path, "$HOME/.rvm"
set :rvm_bin_path, "$HOME/.rvm/bin"

set :application, "prodeo"
set :repository, "git@github.com:mrapple/prodeoacademy.org.git"

set :scm, :git
set :branch, 'master'
set :deploy_to, "/home/deploy/apps/prodeo"
set :user, 'deploy'

server '64.31.53.34', :app, :db, :web, :primary => true # zeus

default_environment["RAILS_ENV"] = 'production'

set :rails_env, :production

ssh_options[:forward_agent] = true
