#really liked hashception but NOT interested in reformatting this alphabet...
braille_top = {"a" => ".  ", "b" => ".  ", "c" => ".. ", "d" => ".. ", "e" => ".  ", "f" => ".. ", "g" => ".. ", "h" => ".  ", "i" => " . ", "j" => " . ", "k" => ".  ", "l" => ".  ", "m" => ".. ", "n" => ".. ", "o" => ".  ", "p" => ".. ", "q" => ".. ", "r" => ".  ", "s" => " . ", "t" => " . ", "u" => ".  ", "v" => ".  ", "w" => " . ", "x" => ".. ", "y" => ".. ", "z" => ".  ", "." => "   ", "," => "   ", "?" => "   ", "!" => "   ", "'" => "   ", "-" => "   ", "#" => " . ", "0" => " . ", "1" => ".  ", "2" => ".  ", "3" => ".. ", "4" => ".. ", "5" => ".  ", "6" => ".. ", "7" => ".. ", "8" => ".  ", "9" => " . ", " " => "  "}
braille_mid = {"a" => "   ", "b" => ".  ", "c" => "   ", "d" => " . ", "e" => " . ", "f" => ".  ", "g" => ".. ", "h" => ".. ", "i" => ".  ", "j" => ".. ", "k" => "   ", "l" => ".  ", "m" => "   ", "n" => " . ", "o" => " . ", "p" => ".  ", "q" => ".. ", "r" => ".. ", "s" => ".  ", "t" => ".. ", "u" => "   ", "v" => ".  ", "w" => ".. ", "x" => "   ", "y" => " . ", "z" => " . ", "." => ".. ", "," => ".  ", "?" => ".  ", "!" => ".. ", "'" => "   ", "-" => "   ", "#" => " . ", "0" => ".. ", "1" => "   ", "2" => ".  ", "3" => "   ", "4" => " . ", "5" => " . ", "6" => ".  ", "7" => ".. ", "8" => ".. ", "9" => ".  ", " " => "  "}
braille_bot = {"a" => "   ", "b" => "   ", "c" => "   ", "d" => "   ", "e" => "   ", "f" => "   ", "g" => "   ", "h" => "   ", "i" => "   ", "j" => "   ", "k" => ".  ", "l" => ".  ", "m" => ".  ", "n" => ".  ", "o" => ".  ", "p" => ".  ", "q" => ".  ", "r" => ".  ", "s" => ".  ", "t" => ".  ", "u" => ".. ", "v" => ".. ", "w" => " . ", "x" => ".. ", "y" => ".. ", "z" => ".. ", "." => " . ", "," => "   ", "?" => ".. ", "!" => ".  ", "'" => ".  ", "-" => ".. ", "#" => ".. ", "0" => "   ", "1" => "   ", "2" => "   ", "3" => "   ", "4" => "   ", "5" => "   ", "6" => "   ", "7" => "   ", "8" => "   ", "9" => "   ", " " => "  "}

#topmost/outermost while loop to have program continue until quit
repeat = "y"
while repeat != "n"

    #initiate while loop to check for valid input
    valid = false
    while valid == false

    puts "Enter a message to be translated."
    puts "Accepts uppercase, lowercase, numbers and basic punctuation (. , ? ! ' - #)"

    #leave uppercase for now to identify capitalization
    message = gets.chomp

    #check each letter for whether it has a stored value
        message.each_char do |letter|

            #if not then return immediately to top
            if braille_top[message[letter].downcase] == nil

                #need to reestablish "false" every time or a single correct character will kick from loop
                valid = false
                puts "Sorry, contains an invalid character."

                #only need one bad character to invalidate message so break at the first instance or "valid" may become true again
                break

            #if message is acceptable then set boolean value to exit the loop
            else
                valid = true
            end
        end
    end

    #loops for top, middle and bottom translation hashes
    message.each_char do |letter|

        #identify capitalization but numbers and punctuation and spaces trigger uppercase conditional so restrict to just letters
        if message[letter] == message[letter].upcase && message[letter].downcase.between?("a","z") 

            #convert to downcase to translate and print capital letters and include the capitalization indicator for each instance
            #FYI capitalization in braille is represented like this immediately before the letter:  --
            #so the spaces before braille_top/mid/bot are part of that character                    --
            #                                                                                       -0

            print "  #{braille_top[message[letter].downcase]}"
        else

            #otherwise just print as normal
        print braille_top[message[letter]]

        end
    end

    #include linebreak to start middle and bottom sections of braille
    print "\n"

    message.each_char do |letter|
        if message[letter] == message[letter].upcase && message[letter].downcase.between?("a","z")
            print "  #{braille_mid[message[letter].downcase]}"
        else
        print braille_mid[message[letter]]
        end
    end

    print "\n"
    message.each_char do |letter|
        if message[letter] == message[letter].upcase && message[letter].downcase.between?("a","z")
            print " .#{braille_bot[message[letter].downcase]}"
        else
        print braille_bot[message[letter]]
        end
    end

    #linebreak
    puts

    #option to interrupt the "repeat" program loop
    puts "Would you like to translate another message? (y/n)"
    repeat = gets.chomp.downcase

        #chose to accept only "y" and "n" which are also the conditional values for the loop
        #while loop to force user into one of those values
        while repeat != "y" && repeat != "n"
            puts "Invalid response. Continue? (y/n)"
            repeat = gets.chomp.downcase
        end

#ending the topmost/outermost while loop ("repeat")        
end


puts "Goodbye!"

## BRAILLE ATTEMPT 3 ... main room lecture hashception

# braille_has = {
#     "a" => {top: ". ", mid: "  ", bot: "  "},
#     "b" => {top: ". ", mid: ". ", bot: "  "},
#     "c" => {top: "..", mid: "  ", bot: "  "},
#     "d" => {top: "..", mid: " .", bot: "  "},
#     "e" => {top: ". ", mid: " .", bot: "  "},
#     "f" => {top: "..", mid: ". ", bot: "  "},
#     "g" => {top: "..", mid: "..", bot: "  "},
#     "h" => {top: ". ", mid: "..", bot: "  "},
#     "i" => {top: " .", mid: ". ", bot: "  "},
#     "j" => {top: " .", mid: "..", bot: "  "},
#     "k" => {top: ". ", mid: "  ", bot: ". "},
#     "l" => {top: ". ", mid: ". ", bot: ". "},
#     "m" => {top: "..", mid: "  ", bot: ". "},
#     "n" => {top: "..", mid: " .", bot: ". "},
#     "o" => {top: ". ", mid: " .", bot: ". "},
#     "p" => {top: "..", mid: ". ", bot: ". "},
#     "q" => {top: "..", mid: "..", bot: ". "},
#     "r" => {top: ". ", mid: "..", bot: ". "},
#     "s" => {top: " .", mid: ". ", bot: ". "},
#     "t" => {top: " .", mid: "..", bot: ". "},
#     "u" => {top: ". ", mid: "  ", bot: ".."},
#     "v" => {top: ". ", mid: ". ", bot: ".."},
#     "w" => {top: " .", mid: "..", bot: " ."},
#     "x" => {top: "..", mid: "  ", bot: ".."},
#     "y" => {top: "..", mid: " .", bot: ".."},
#     "z" => {top: ". ", mid: " .", bot: ".."},
# }

# puts "Enter a message to be translated."
# message = gets.downcase.chomp
# message.each_char do |letter|
#     print "#{braille_hash[letter][:top]} "
# end
# puts
# message.each_char do |letter|
#     print "#{braille_hash[letter][:mid]} "
# end
# puts
# message.each_char do |letter|
#     print "#{braille_hash[letter][:bot]} "
# end
# puts

## BRAILLE ATTEMPT 3 ... main room lecture with strings

# braille_has = {
#     "a" => {".     "},
#     "b" => {". .   "},
#     "c" => {"..    "},
#     "d" => {".. .  "},
#     "e" => {".  .  "},
#     "f" => {"...   "},
#     "g" => {"....  "},
#     "h" => {". ..  "},
#     "i" => {" ..   "},
#     "j" => {" ...  "},
#     "k" => {".   . "},
#     "l" => {". . . "},
#     "m" => {"..  . "},
#     "n" => {".. .. "},
#     "o" => {".  .. "},
#     "p" => {"... . "},
#     "q" => {"..... "},
#     "r" => {". ... "},
#     "s" => {" .. . "},
#     "t" => {" .... "},
#     "u" => {".   .."},
#     "v" => {". . .."},
#     "w" => {" ... ."},
#     "x" => {"..  .."},
#     "y" => {".. ..."},
#     "z" => {".  ..."},
# }

# puts "Enter a message to be translated."
# message = gets.downcase.chomp
# message.each_char do |letter|
#     print "#{braille_hash[letter][0..1]} "
# end
# puts
# message.each_char do |letter|
#     print "#{braille_hash[letter][2,3]} "
# end
# puts
# message.each_char do |letter|
#     print "#{braille_hash[letter][4..5]} "
# end
# puts