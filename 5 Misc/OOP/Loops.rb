# keep_looping = true
# while keep_looping
#     puts "Hello there!"
#     keep_looping = false
# end

# x = 1
# while x < 11
#     puts x
#     x += 1
# end

# for i in 1..5     #syntax more like C sharp
#     puts i
# end

# (1..5).each do |i|  #the proper ruby way to do it
#     puts i
# end

# 10.downto(1) {|i| puts i}

# 10.downto(1) do |i|
#     puts i
# end

# 10.downto(1).each do |i|
#     puts i
# end

# (1..20).reverse_each do |i|
#     puts i
# end

# i = 20
# while i > 0
#     puts i
#     i -= 1
# end

# (1..20).each do |i|
#     puts 101 - i
# end

# (1..20).each do |i|
#     puts i*2
# end

# (1..20).each do |i|
#     if i % 2 == 0
#         puts i
#     end
# end

# (1..20).step(2) do |i|
#     puts i
# end

# i = 0
# until i == 100
#     puts i += 2
# end

# (1..100).each do |i|
#     if (i % 5 != 0)
#         next
#     else
#         puts i
#     end
# end

# (1..100).each do |i|
#     if i % 15 == 0
#         puts "fizzbuzz" 
#     elsif i % 5 == 0
#         puts "buzz"
#     elsif i % 3 == 0
#         puts "fizz"
#     else
#     puts i
#     end
# end

puts 100.downto(1).to_a #this is an array