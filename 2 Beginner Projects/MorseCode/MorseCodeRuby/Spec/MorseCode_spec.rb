require "MorseCode"

describe MorseConverter do
    describe "convert" do
        # it "returns '*--' when given 'a'" do
        #     converter = MorseConverter.new
        #     expect(converter.convert "a").to eql("*-")
        # end
        # it "returns ----- when given 0" do
        #     converter = MorseConverter.new
        #     expect(converter.convert "0").to eql("-----")
        # end
        it "converts letters in to morse characters" do
            converter = MorseConverter.new
            result = converter.convert "abc"
            expect(result).to eql("•- -••• -•-• ")
        end
        it "* to bad character" do
            converter = MorseConverter.new
            result = converter.convert "*"
            expect(result).to eql("? ")
        end
    end
end

# describe MorseConverter do
    #     describe "convert" do
    #         it "returns '*--' when given 'a'" do
    #             converter = MorseConverter.new
    #             result = converter.convert("a")
    #             expect(result).to eql("*-") 
    #         end
    #         it "returns ----- when given 0" do
    #             converter = MorseConverter.new
    #             result = converter.convert("a")
    #             expect(result).to eql("*-") 
    #         end
    #     end
    # end