class Calculator

    def convert string

        input = string.split(/(\D)/)
        output = input[0].to_i

        operator = ''

        for i in input.drop(1) do
            if i.match(/\D/)
                operator = i
            else
                if operator == "+"
                    output = output + i.to_i
                elsif operator == "-"
                    output = output - i.to_i
                elsif operator == "*"
                    output = output * i.to_i
                elsif operator == "/"
                    output = output / i.to_i
                end
            end
        end

        return output

    end
end