require "./lib/MorseCode"

puts "Enter a message to be translated."
message = gets.chomp.downcase

translator = MorseConverter.new
result = translator.convert(message)
puts result