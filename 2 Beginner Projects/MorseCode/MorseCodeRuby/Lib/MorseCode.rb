class MorseConverter
    def initialize
        @key =
        {"a" => "•- ", 
        "b" => "-••• ",
        "c" => "-•-• ",
        "d" => "-•• ",
        "e" => "• ",
        "f" => "••-• ",
        "g" => "--• ",
        "h" => "••• ",
        "i" => "•• ",
        "j" => "•--- ",
        "k" => "–•– ",
        "l" => "•–•• ",
        "m" => "-- ",
        "n" => "-• ",
        "o" => "--- ",
        "p" => "•--• ",
        "q" => "--•- ",
        "r" => "•-• ",
        "s" => "••• ",
        "t" => "- ",
        "u" => "••- ",
        "v" => "•••- ",
        "w" => "•-- ",
        "x" => "-••- ",
        "y" => "-•-- ",
        "z" => "--•• ",
        "0" => "----- ",
        "1" => "•---- ",
        "2" => "••--- ",
        "3" => "•••-- ",
        "4" => "••••- ",
        "5" => "••••• ",
        "6" => "-•••• ",
        "7" => "--••• ",
        "8" => "---•• ",
        "9" => "----• ",
        " " => " ",
        "." => " "}
    end
    def convert message
        result = ""
        message.each_char do |i|

            result += @key[message[i]]
        end
        result
    end

    # def valid character
    #     if key.include? character
    #         value = true
    #     else
    #         value = false
    #     end
    #     return valid
    # end
end