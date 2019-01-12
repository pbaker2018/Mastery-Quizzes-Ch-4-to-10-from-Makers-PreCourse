# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).
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
    puts "Enter what category to search"
  end

  def ask_user_for_key
    puts "Enter what value to search for"
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
      ask_user_for_key
      acquire_input
      puts people_by_sport[$input]
    elsif $input == "fruit"
      ask_user_for_key
      acquire_input
      puts people_by_fruit[$input]
    end
  end

  run_program
