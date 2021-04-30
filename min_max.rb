##
# The min max porgram creates 10 random numbers and finds the highest/lowest
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-30
# frozen_string_literal: true

def max_finder(random_number)
  # Sets to 0th element in the array
  max_num = random_number[0]

  10.times do |count|
    # Finds the highest number in the array
    max_num = random_number[count] if random_number[count] > max_num
  end
  # Returns the highest number
  max_num
end

def min_finder(random_number)
  # Sets to 0th element in the array
  min_num = random_number[0]

  10.times do |count|
    # Finds the lowest number in the array
    min_num = random_number[count] if random_number[count] < min_num
  end
  # Returns the lowest number
  min_num
end

# Creates an array
random_number = Array.new(10)

# Creates random numbers in the array
10.times do |count|
  random_number.insert(count, rand(1..99))
end

# Prints out the random numbers
10.times do |count|
  num = random_number[count]
  puts num.to_s
end

# Stores the returned values in max and min
max = max_finder(random_number)
min = min_finder(random_number)

# Prints out the max and min
puts
puts "Max Number: #{max}"
puts "Min Number: #{min}"
puts
puts 'Done'
