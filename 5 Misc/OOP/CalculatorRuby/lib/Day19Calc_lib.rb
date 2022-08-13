class StringCalculator
    def calculate the_string

        #find the parts
        math_array = the_string.split("+")

        while math_array.length > 1
            result = math_array[0].to_i + math_array[1].to_i
            math_array.delete_at(0)
            math_array.delete_at(0)
            #unshift will add/push result to the BEGINNING of the array
            math_array.unshift(result)
        end
        # left_number = math_array[0]
        # right_number = math_array[1]

        #do the math
        # answer = left_number.to_i + right_number.to_i

        #return the answer
        return answer

    end
end