require "Day18Frog_lib"

describe Frog do
    #doing some organizing with "context", still needs indent & end
    context "default frogs" do
        let(:our_frog) {Frog.new}
        it "can speak" do
            #replace line below with the "let" above...
            # my_frog_alfredo = Frog.new
            word = our_frog.speak
            expect(word).to eql ("ribbit")
        end
        it "can tell me how many 'r's it has in a word" do
            #custom word so we can anticipate the outcome
            jill_frog = Frog.new("rrrr") 
            number_of_rs = jill_frog.count_rs
            expect(number_of_rs).to eql(4)
        end
    end

    context "custom frogs" do
        it "can learn a  new word" do
            #".new" calls the "initialize" function
            #"croak" is passing a new default to replace "ribbit"

            # condense and replace below lines with "let"
            # my_frog_damien = Frog.new("croak") 
            # word = my_frog_damien.speak
            
            let(:our_frog) {Frog.new("croak")}
            word = our_frog.speak
            expect(word).to eql("croak")
        end
    end
end 