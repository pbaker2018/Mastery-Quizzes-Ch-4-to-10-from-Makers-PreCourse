# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.
puts 1.upto(250).reduce(0) { |sum, num| sum + num }
