require "./lib/MadLib_lib"

our_mad_lib = MadLibs.new

story = "Once upon a time, [person] jumped out of the [ing_word] building. It was very [adjective] said the [role] quietly."

keywords = our_mad_lib.find_words(story)

keywords.each do |word|
    puts "Enter a #{word}"
    new_word = gets.chomp
    story =  our_mad_lib.replace_string word, new_word, story
end

puts story