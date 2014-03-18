# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ProdeoacademyOrg::Application.initialize!

ProdeoacademyOrg::Application.configure do
    config.individuals = [
        "Dane and Carolyn Anderson",
        "Tony Bruess",
        "John and Nancy Lawlor",
        "Mary McGreevy",
        "Mary Sue Payne",
        "Lowell Stortz",
        "Greg and Jane Goven",
        "John and Margie Wiehoff",
        "Chad and Julie Lindbloom",
        "Steve and Carolyn Weiby",
        "Pat and Ann Ryan",
    ].sort do |a,b|
        a.split(' ').last.downcase <=> b.split(' ').last.downcase
    end

    config.corporations = [
        "Amelia Ann Photography",
        "Boston Scientific",
        "CH Robinson",
        "Fredrikson & Byron, P.A.",
        "General Mills Foundation",
        "Heartland Investigative Group",
        "The Lawlor Group",
        "Leonard, Street and Deinard",
        "Lillehei Family Foundation",
        "Minneapolis Foundation",
        "Tierney Brothers Inc.",
        "Walton Family Foundation",
        "Mulvehill Family Foundation",
        "Schulze Family Foundation",
    ].sort!

    config.tutors = [
        "A&P Construction",
        "General Mills",
        "Leonard Street Deinard",
        "Meristem",
        "Ryan Companies",
        "Target",
    ].sort!
end
