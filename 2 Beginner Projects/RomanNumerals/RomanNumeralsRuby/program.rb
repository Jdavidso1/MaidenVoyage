require "./lib/converter"

puts "Hey, give me a number and I'll tell you the roman numeral equivalent."
number = gets.chomp.to_i

convert = RomanConverter.new
puts "Your roman numeral version is: " + convert.convert(number)