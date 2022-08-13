puts "What is the length of your garden box in feet?"
length = gets.chomp
puts "What is the widtch of your garden box in feet?"
width = gets.chomp
area = length.to_i * width.to_i
perimeter = (length.to_i + width.to_i) * 2
puts "The area of your garden box is #{area} square feet."
puts "The perimeter of your garden box is #{perimeter} feet."

carrots = area
beets = (area / 16).floor * 9
corn = (area / 16).floor * 3

puts "What veggie would you like to plant? Carrots, beets or corn?"
veggie = gets.chomp #how to do downcase?

puts veggie

if veggie == "carrots"
    puts "You can plant " + carrots + " carrots."

elsif veggie == "beets"
    puts "You can plant #{beets} beets."

if veggie == "corn"
    puts "You can plant #{corn} corn."
end