class Child
    include Mongoid::Document
    include Mongoid::Timestamps

    field :last_name
    field :first_name
    field :age
    field :school

    belongs_to :registration
end
