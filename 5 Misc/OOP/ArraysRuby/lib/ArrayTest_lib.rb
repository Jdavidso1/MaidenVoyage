class ArraySorter

    def array_sort(input)
        if input.class == Array
            return input.sort
        else
            new_array = input.split(//)
            return new_array.sort
        end
    end

    ##this works if you want to simulate user input for testing
    # def array_get
    #     input = []
    #     input << 3
    #     input << 2
    #     input << 1
    #     return input
    # end

    ##step 1 - returning the user input
    # def array_value(input)
    #   return input
    # end

    ##step 2 - sorting the input
    # def array_sort(input)
    #     return input.sort
    # end

    ##step 3 - array validity
    # def array_scan(input)
    #     if input.class == Array
    #         valid = true
    #     end
    #     return valid
    # end

end