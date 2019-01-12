# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.
  array1 = []
  array2 = []
  puts "Player one, please move."
  input = gets.chomp
  array1 << input
  puts "Player two, please move."
  input = gets.chomp
  array2 << input

  if array1[0] == "rock" && array2[0] == "scissors"
    puts "Player 1 wins"
  elsif array2[0] == "rock" && array1[0] == "scissors"
    puts "Player 2 wins"
  elsif array1[0] == "paper" && array2[0] == "rock"
    puts "Player 1 wins"
  elsif array2[0] == "paper" && array1[0] == "rock"
    puts "Player 2 wins"
  elsif array1[0] == "scissors" && array2[0] == "paper"
    puts "Player 1 wins"
  elsif array2[0] == "scissors" && array1[0] == "paper"
    puts "Player 2 wins"
  else
    puts "It's a draw"
  end
