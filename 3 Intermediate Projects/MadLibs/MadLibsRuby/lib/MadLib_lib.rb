class MadLibs

    def initialize
        #creates the array that will hold all the keywords
        @story_keywords = []

    end

    #this takes the template and returns and array
    def find_words story_template
        @story_keywords = []
        #breaks the story_template into keywords
        keywords = story_template.split()
        #find keywords and put in to array
        #using a for loop, scans each word and looks for staples
        keywords.each do |word|
            if (word != "") && (word[0] == "[")
                #first value is starting index
                #second value is ending index/number of characters
                #end of the string would be -1 (loops backward)
                #so -2 will chop off the last character ("]")
                @story_keywords << word[1..-2]
            end
        end
        @story_keywords
    end

    #one-line function should probably just be in main
    #but we need to be able to test this in spec :)
    def replace_string keyword, user_word, the_story
        the_story.gsub("[#{keyword}]", user_word)
    end

    def print_story
    #print out the story after all the parts of speech keywords
    #have been replaced with user input, the_story should live
    #inside the class
    end

end