require "./lib/Calculator_lib"

string = Calculator.new

puts "Hey friend! Why don't you give me some numbers to crunch.
Now, I'm not very good yet...
So I'm trusting you to just use numbers and operators like +, -, * and /
Cool? Cool. Whatcha got?"

formula = gets.delete(' ')

puts "The answer is hopefully " + string.convert(formula).to_s + "!"