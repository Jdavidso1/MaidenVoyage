require "MadLib_lib"

describe MadLibs do

    #instantiating the class for each test below
    let(:test_word) {MadLibs.new}

    describe "Testing this" do
        it "this should be true" do
            expect(true).to eql (true)
        end
    end
    
    describe "Test for finding string" do
        it "should find the string" do
            # test_word = MadLibs.new
            keyword = test_word.find_words("[noun]")
            expect(keyword).to eql (["noun"])
        end
    end

    describe "Test for finding more strings" do
        it "should find the strings" do
            # test_word = MadLibs.new
            template = "[noun] [adjective]"
            keyword = test_word.find_words(template)
            expect(keyword).to eql (["noun" , "adjective"])
        end
    end

    describe "Test for finding strings around text" do
        it "should find the strings" do
            # test_word = MadLibs.new
            template = "[noun] something between [adjective]"
            keyword = test_word.find_words(template)
            expect(keyword).to eql (["noun" , "adjective"])
        end
    end

    describe "does it replace the story keywords" do
        it "should replace the with keyword" do
            # test_word = MadLibs.new
            the_story = "[noun]"
            story_keywords = "noun"
            user_word = "apple"
            returned_word = test_word.replace_string(story_keywords, user_word, the_story)
            expect(returned_word).to eql("apple")
        end
    end

    #need to make another test to verify that the story print
    #returns all the replaced parts of speech

end