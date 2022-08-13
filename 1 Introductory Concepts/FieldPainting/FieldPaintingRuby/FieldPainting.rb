puts "Your field is a circle, right? Sorry, but it has to be.
What is the radius of your field (in feet)?"
radius = (gets.chomp).to_i

area = Math::PI * radius * radius
buckets = (area / 100).ceil

puts "Cool, the area you're painting is #{area.round(2)} square feet."
puts "You'll need #{buckets} buckets to cover your #{radius} foot circle."

puts "Uh oh, boss wants you to use a different color. Which one should we use?"

choice = false
while !choice
    choice = true

puts "Pick one: (r)ed, (b)lue, (y)ellow or (g)reen."
color = (gets.chomp).downcase

if color == "r"
    buckets = (area / 100).ceil
    cost = 25 * buckets
    color = "red"
elsif color == "b"
    buckets = (area / 120).ceil
    cost = 28 * buckets
    color = "blue"
elsif color == "g"
    buckets = (area / 90).ceil
    cost = 33 * buckets
    color = "green"
elsif color == "y"
    buckets = (area / 70).ceil
    cost = 22 * buckets
    color = "yellow"
else
    puts "Nope, try again."
    choice = false
end
end

puts "Okay, now you'll need #{buckets} buckets of #{color} paint to cover your #{radius} foot circle."
puts "It's gonna cost you $#{'%.2f' % cost}."

