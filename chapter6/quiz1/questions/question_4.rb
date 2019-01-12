# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in an hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
$location = "hall"
$input = ""

def move_to_study
  puts "Move to the study."
  $location = "study"
end

def print_standing_in_hall
  puts "You are standing in an hall with a marble floor. You see a door."
end

def acquire_user_input
  $input = gets.chomp
end

def print_location_study
  puts "You are in a warm and cosy study. You see a safe. You see a desk."
end

def look_at_desk
  puts "You see a piece of paper that reads, The combination is 2451."
end

def enter_combination_of_safe
  puts "You see some diamonds in the safe, pick them up and make your escape"
end

def move_back_to_hall
  puts "Move to the hall."
  $location = "hall"
end

def quit_game
  puts "Bye!"
end

def run
  while $location == "hall"
    acquire_user_input
    if $input == "north"
      move_to_study
      break
    elsif $input == "look"
      print_standing_in_hall
      acquire_user_input
    elsif $input == "quit"
      quit_game
      break
    end
    if $input == "north"
      move_to_study
      break
    elsif $input == "quit"
      quit_game
      break
    end
  end

  while $location == "study"
    acquire_user_input
    if $input == "look"
      print_location_study
      acquire_user_input
    elsif $input == "quit"
      quit_game
      break
    elsif $input == "south"
      move_back_to_hall
      run
      break
    end
    if $input == "look at desk"
      look_at_desk
      acquire_user_input
    elsif $input == "quit"
      quit_game
      break
    elsif $input == "south"
      move_back_to_hall
      run
      break
    end
    if $input == "enter combination 2451"
      enter_combination_of_safe
      break
    elsif $input == "south"
      move_back_to_hall
      run
      break
    elsif $input == "quit"
      quit_game
      break
    end
  end
end

run
