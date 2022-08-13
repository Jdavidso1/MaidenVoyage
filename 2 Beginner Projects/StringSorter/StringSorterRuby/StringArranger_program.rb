require './lib/StringArranger_lib'

puts "enter whatever you want"

input = gets.chomp

arranger = String_Arranger.new
result = arranger.arrange(input)

print result