require "converter" #file/folder access for everything

=begin
describe "does testing work" do #testing...
    it "says true equals true" do #could be anything, doesn't have to be string
        expect(true).to eql(true) #basically an if statement, parens equal to parens
    end
end

describe "does it return bad tests" do
    it "should fail when I say true is expected to equal false" do
        expect(true).to eql(false) #example to show failed test
    end
end
=end

describe RomanNumerals do #how we normally do the "describe" part, describe the class
    describe "roman_convert" do #then describe a function (noun, verb ... thing, do)
        it "returns I when given 1" do
            converter = RomanNumerals.new #need to make an instance of our class
            result = converter.roman_convert(1) #normally wouldn't use parens, ruby can figure it out itself
            expect(result).to eql("I") #RomanNumerals is the blueprint, converter is a house
        end

        it "returns II when given 2" do
            converter = RomanNumerals.new
            result = converter.roman_convert 2
            expect(result).to eql("II") 
        end

        it "returns IV when given 4" do
            converter = RomanNumerals.new
            result = converter.roman_convert 4
            expect(result).to eql("IV") 
        end

        it "returns V when given 5" do
            converter = RomanNumerals.new
            result = converter.roman_convert 5
            expect(result).to eql("V") 
        end

        it "returns VIII when given 8" do
            converter = RomanNumerals.new
            result = converter.roman_convert 8
            expect(result).to eql("VIII") 
        end

        it "returns nulla when given 0" do
            converter = RomanNumerals.new
            result = converter.roman_convert 0
            expect(result).to eql("nulla") 
        end

    end

    describe "some_other_function" do #probably will describe multiple functions
        it "does nothing yet!" do
        end
    end
end