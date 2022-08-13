class Frog
    #this makes the variable accessible outside the class (like in spec!)
    attr_accessor :word

    #initialize establishes the variable/value for ".new"
    #giving default value of "ribbit" otherwise empty
    def initialize word_for_frog="ribbit"
        #@ makes it available anywhere INSIDE the class
        @word = word_for_frog
    end

    def speak
        return @word
    end

    def count_rs
        return @word.count("r")
    end
end