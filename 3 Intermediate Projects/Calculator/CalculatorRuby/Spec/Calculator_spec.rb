require "Calculator_lib"

describe Calculator do
    let(:calc) {Calculator.new}

    describe "does this work" do
        it "says true is true" do
            expect(true).to eql(true)
        end
    end

    describe "can we return a value" do
        it "if given 1 returns 1" do
            expect(calc.calculate(1)).to eql(1)
        end
    end

    describe "can we add/subtract with 2 operands" do
        it "if given 2+3 returns 5" do
            expect(calc.calculate(2+3)).to eql(5)
        end
    end

    describe "can we multiply/divide with 2 operands" do
        it "if given 20/5 returns 4" do
            expect(calc.calculate(20/5)).to eql(4)
        end
    end

    describe "can we add/subtract with 2 operands and spaces" do
        it "if given 2 + 3 returns 5" do
            expect(calc.calculate(2 + 3)).to eql(5)
        end
    end

    describe "can we add/subtract with a string" do
        it "if given '2+3' returns 5" do
            expect(calc.calculate("2+3")).to eql(5)
        end
    end

end