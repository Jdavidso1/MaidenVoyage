require "./lib/Day18Frog_lib"

puts "Enter input for the frog!"
frog_word = gets.chomp

new_frog = Frog.new(frog_word)
puts "Your frog is speaking: #{new_frog.speak}"