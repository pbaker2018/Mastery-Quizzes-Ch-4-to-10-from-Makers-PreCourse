# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.
  $input = ""

  $array = []

  $accumulator = []

  $points_hash = {
  "a" => 1,
  "b" => 3,
  "c" => 3,
  "d" => 2,
  "e" => 1,
  "f" => 4,
  "g" => 2,
  "h" => 4,
  "i" => 1,
  "j" => 8,
  "k" => 5,
  "l" => 1,
  "m" => 3,
  "n" => 1,
  "o" => 1,
  "p" => 3,
  "q" => 10,
  "r" => 1,
  "s" => 1,
  "t" => 1,
  "u" => 1,
  "v" => 4,
  "w" => 4,
  "x" => 8,
  "y" => 4,
  "z" => 10
  }

  def ask_user_for_a_word
    puts "please type in a word"
  end

  def acquire_user_input
    $input = gets.chomp
  end

  def create_array_of_word
    $input = $input.to_s.downcase
    $array = $input.chars
    $array = $array.delete_if { |element| element == "" || element == " " || element == nil }
  end

  def sum_the_points_of_word
    $accumulator = []
    $array.each { |element| $accumulator << $points_hash[element] }
    total = $accumulator.reduce(0) { |sum, num| sum + num }
    puts total
  end

  def run_program
    ask_user_for_a_word
    acquire_user_input
    create_array_of_word
    sum_the_points_of_word
  end

  run_program
