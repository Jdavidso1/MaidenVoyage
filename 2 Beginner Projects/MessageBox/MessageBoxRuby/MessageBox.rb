messages = []
inbox = 1

quit = false
while !quit

    puts "Would you like to (s)tore a message, (r)etrieve a message, (v)iew all messages or (q)uit?"
    user_task = gets.downcase.chomp

    if user_task == "s"
        puts "What do you want to store?"
        messages.push(gets.chomp) 
        puts "Your message is stored at inbox #{inbox}."
        inbox += 1

        # puts "What do you want to store?"
        # user_input = gets.chomp
        # (0..user_input.length).each do |i|
        #     user_input[i] = user_input[i] + 5 
            

        puts "Your message is stored at inbox #{inbox}."
        inbox += 1

    elsif user_task == "r"
        puts "What inbox do you want?"
        retrieve_inbox = gets.chomp.to_i
            # if retrieve_inbox > inbox - 1
            if messages[retrieve_inbox - 1] == nil
                puts "Sorry, that box is empty."
            else
                puts messages[retrieve_inbox - 1]
            end
    
    elsif
        user_task == "v"
        (1..(messages.length)).each do |i|
            puts i.to_s + " #{messages[i - 1].to_s}"
        end
    
    elsif user_task == "q"
        puts "Okay, bye!"
        quit = true

    else
        puts "Sorry, I didn't catch that..."
    end
end