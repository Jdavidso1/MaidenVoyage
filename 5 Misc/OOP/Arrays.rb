names = ["John", "Jean", "Saturn", "Mars", ["Jupiter", "Saturn"], "Venus"]

puts names[1] #prints "Jean"

puts names[0..3] #prints 0 - 3

puts names #prints all

puts names[4][1] #prints "Saturn"

puts "What is your name?"
names.push(gets.chomp)

names.push("Saturn") #push "Saturn" which goes to the end

names << "Mars" #shovel "Mars" which goes to the end

puts "Here is the list: "
puts names

puts names.length
puts names.count

