# First example

redation = 100

# Bad implementation :(

if redation >= 100
  puts 'A redação é maior'
end

# Good implementation :D

puts 'A redação é maior' if redation >= 100

# Second example with loops

# bad implementation :(
number_one = 0

while number_one < 5
  number_one += 1
end

# Good implatation :D

number_two = 0

number_two += 1 while number_two < 5

puts "O numero Um é #{number_one}"
puts "O numero dois é #{number_two}"
