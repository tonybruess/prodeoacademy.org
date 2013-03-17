class Parent
    include Mongoid::Document
    include Mongoid::Timestamps

    field :last_name
    field :first_name
    field :relationship
    field :gender
    field :phone_home
    field :phone_cell
    field :phone_work
    field :email

    belongs_to :registration
end
