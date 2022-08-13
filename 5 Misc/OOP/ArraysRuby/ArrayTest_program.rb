require './lib/ArrayTest'

puts "enter an array"

input = gets.chomp

scanner = ArraySorter.new
result = scanner.array_sort(input)

print result