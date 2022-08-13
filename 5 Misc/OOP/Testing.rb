#MORSE_CODE.RB =======================================

class MorseConverter

#MORSE_SPEC.RB =======================================

require './MORSE_CODE'

describe MorseConverter do
    it "sets up testing properly" do
        # expect means a line that makes the test pass/fail
        expect(true).to be true
        expect(true).to eql(true)
    end

    it "can convert a to .-" do
        # concepts we are naming: decision we are making
        # our class: MorseConverter. The thing that does the things and stores the data
        # the function: convert. the thing that the class does
        # the class instance: converter. when you call ClassName.new, the thing you get back.
        # the input/output of calling the function:
        #   "a" is the input
        #   result is the output

        # Given
        converter = MorseConverter.new
        # When
        result = converter.convert("a")
        # Then
        expect(result).to eql ".-"
    end

    it "can convert s to ..." do
        converter = MorseConverter.new
        result = converter.convert("b")
        expect(result).to eql ("...")
    end
end

#MORSE_SPEC.RB with less repetition ==================

describe MorseConverter do
    # let creates a variable that you can use in each test under this same context
    let(:converter) { MorseConverter.new }

    # don't worry too much about this!
    before(:each) do
        @input = "a"
    end

    it "can convert a to .-" do
        # concepts we are naming: decision we are making
        # our class: MorseConverter. The thing that does the things and stores the data
        # the function: convert. the thing that the class does
        # the class instance: converter. when you call ClassName.new, the thing you get back.
        # the input/output of calling the function:
        #   "a" is the input
        #   result is the output

        # Given
        # When
        result = converter.convert(@input)
        # Then
        expect(result).to eql ".-"
    end

    it "can convert s to ..." do
        result = converter.convert(@input)
        expect(result).to eql ("...")
    end
end