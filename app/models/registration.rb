class Registration
    include Mongoid::Document
    include Mongoid::Timestamps

    # Basic Information
    field :enrolling_grade
    field :last_name
    field :first_name
    field :middle_name
    field :gender
    field :birthdate
    # Address
    field :home_address
    field :apt_number
    field :city
    field :state
    field :zip
    # Basic Information
    field :race, :type => Array
    field :previous_school_name
    field :previous_school_city
    field :previous_school_phone
    has_many :children

    # Parent / Guardian Information
    has_many :parents
    field :lives_with, :type => Array
    field :can_not_pick_up

    # Special Services
    field :special_services, :type => Array
    field :accommodation_plan, :type => Boolean
    field :title_one, :type => Boolean

    # Language in Home
    field :most_often_at_home
    field :receive_ell, :type => Boolean
    field :adult_read_english, :type => Boolean
    field :adult_read_language

    # Misc
    field :person_completing_form
end
