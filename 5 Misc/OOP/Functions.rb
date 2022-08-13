#add 1, 2 ##order still matters until classes and stuff, not defined yet

def named_function
    puts "Hi there"
    puts "I'm in a function"
    "Hi there, I'm a vlue that was returned!"
end

def add number1, number2
    number1 + number2
end

add 1, 2
add 5.3, 2000
add "James", " is cool"

puts 1 + 2
puts add(1, 2)
puts add(5.3, 2000)
puts add("James", " is cool")
puts named_function

#add 3, "hello" ##can't take a string plus a number, would need to convert one to the other like 3.to_s

#add "only one thing" ##wrong number of items for function