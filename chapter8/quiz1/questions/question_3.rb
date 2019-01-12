# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

$input = ""
$people = [
{ "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
{ "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
{ "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
{ "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
{ "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
{ "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
{ "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

def acquire_input
  $input = gets.chomp
end

def ask_user_for_category
  # puts "Enter what category to search"
end

def run_program

  people_by_sport = {}

  $people.each do |person|
    sport = person["sport"]

    if people_by_sport[sport] == nil
      people_by_sport[sport] = []
    end

    people_by_sport[sport].push(person["name"])
  end

  people_by_fruit = {}

  $people.each do |person|
    fruit = person["fruit"]

    if people_by_fruit[fruit] == nil
      people_by_fruit[fruit] = []
    end

    people_by_fruit[fruit].push(person["name"])
  end

  ask_user_for_category
  acquire_input
  if $input == "sport"
    people_by_sport.each do |key, value|
      puts key
      puts value
    end
  elsif $input == "fruit"
    people_by_fruit.each do |key, value|
      puts key
      puts value
    end
  end
end

run_program
