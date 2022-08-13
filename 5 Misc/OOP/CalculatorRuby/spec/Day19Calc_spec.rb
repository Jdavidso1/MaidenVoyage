require "Day19Calc_lib"

describe StringCalculator do
    it "can add 2 + 2" do
        my_calc = StringCalculator.new
        answer = my_calc.calculate("2 + 2")
        expect(answer).to eql(4)
    end

    it "can add 2 + 3" do
        my_calc = StringCalculator.new
        answer = my_calc.calculate("2 + 3")
        expect(answer).to eql(5)
    end

    it "can add 2 + 2 + 2" do
        my_calc = StringCalculator.new
        answer = my_calc.calculate("2 + 2 + 2")
        expect(answer).to eql(6)
    end

    # it "can add non-integers"
    # it "can add without spaces"
    # it "can add multi-digit numbers"
    # it "can do operations other than add"

end