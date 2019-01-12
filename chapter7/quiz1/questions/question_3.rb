# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

  $river_array = ["-", "-", "P", "-", "-", "-", "-", "C", "-", "-", "C", "C", "-", "C", "C", "C",
  "C", "-", "C", "C"]
  $input = ""
  $index = 2

  def display_river
    puts "#{$river_array[0]}#{$river_array[1]}#{$river_array[2]}" +
    "#{$river_array[3]}#{$river_array[4]}"
    puts "#{$river_array[5]}#{$river_array[6]}#{$river_array[7]}" +
    "#{$river_array[8]}#{$river_array[9]}"
    puts "#{$river_array[10]}#{$river_array[11]}#{$river_array[12]}" +
    "#{$river_array[13]}#{$river_array[14]}"
    puts "#{$river_array[15]}#{$river_array[16]}#{$river_array[17]}" +
    "#{$river_array[18]}#{$river_array[19]}#{$river_array[20]}"
  end

  def ask_player_to_go_left_right_or_neither
      # puts "Type left, right or neither"
  end

  def acquire_user_input
    $input = gets.chomp
  end

  def lost_game_you_were_eaten
    if $index == 7 || $index == 10 || $index == 11 || $index == 13 ||
      $index == 14 || $index == 15 || $index == 16 || $index == 18 || $index == 19
      puts "You were eaten."
      y = 1
    end
    y
  end

  def won_game_you_survived
    if $index == 17
      print "You survived!"
      y = 1
    end
    y
  end

  def input_to_index
    if $input == "left"
      $index = $index + 4
    elsif $input == "right"
      $index = $index + 6
    elsif $input == "neither"
      $index = $index + 5
    end
  end

  def remove_previous_location
    $river_array.map! { |e| e.tr("P", "-") }
  end

  def move
    player = "P"
    $river_array[$index] = player
  end

  def run_program
    loop do
      display_river
      break if lost_game_you_were_eaten == 1 || won_game_you_survived == 1
      ask_player_to_go_left_right_or_neither
      acquire_user_input
      $index = input_to_index
      remove_previous_location
      move
    end
  end

  run_program
