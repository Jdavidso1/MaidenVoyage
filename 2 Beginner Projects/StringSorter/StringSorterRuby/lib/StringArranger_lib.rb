class String_Arranger

    def arrange(input)
        output = ""
        input = input.downcase
        input = input.split(//)
        input = input.sort

        x = 0
        while x < input.length
            if input[x] >= "a" && input[x] <= "z"
                output << input[x]
                x = x + 1
            else
                x = x + 1
            end
        end
        return output
    end
end