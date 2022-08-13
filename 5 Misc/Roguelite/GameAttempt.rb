
require 'io/console' # this is needed for STDIN.getch to work

use_grid = Array.new(20) {Array.new(20) {"m"}}
key_grid = Array.new(20) {Array.new(20) {0}}

# Array.new creates a new array with 0 spots
# Array.new(10) creates a new array with 10 spots, each with no value
# Array.new(10) {"hello"} creates a new array with 10 spots, each with the word "hello" in it

# To create a use_grid, you want to create an array where each spot in the array holds its own array of spots

##this is by far the simplest and cleanest method to print so far...
# use_grid.each do |i|        
#     puts i.join(" ")
# end

#player position ... randomize?
pX = 0
pY = 0
use_grid[pX][pY] = "@"

#mountains
mX = 0
mY = 0
mountain = Array.new(20)
(0...mountain.length).each do |i|
    mX = rand(0..19)
    mY = rand(0..19)
    use_grid[mX][mY] = "A"
end

#random treasure - key only
tX = 0
tY = 0

use_grid

#bandits


#town


message = ""

direction = ""
while direction != "q"

    system "cls"

    (0...use_grid.length).each do |x|
        (0...use_grid.length).each do |y|
            print "#{use_grid[x][y]} "
        end
        puts
    end

    puts message

    # #not working...
    # use_grid.each do |x|
    #     use_grid.each do |y|
    #         print use_grid[x][y]
    #     end
    #     puts
    # end

    puts "What direction do you want to go? (w, a, s, d, or q)" 

    use_grid[pX][pY] = "m"

    direction = STDIN.getch

    case direction
        when "w"
            if use_grid[pX -1][pY] != "A"
                message = ""
                if pX > 0
                    pX = pX - 1
                end
            else
                message = "You're bumping in to a mountain, my guy..."
            end
        when "a"
            if use_grid[pX][pY - 1] != "A"
                message = ""
                if pY > 0
                    pY = pY - 1
                end
            else
                message = "You're bumping in to a mountain, my guy..."
            end
        when "s"
            if use_grid[pX + 1][pY] != "A"
                message = ""
                if pX < 19
                    pX = pX + 1
                end
            else
                message = "You're bumping in to a mountain, my guy..."
            end
        when "d"
            if use_grid[pX][pY + 1] != "A"
                message = ""
                if pY < 19
                    pY = pY + 1
                end
            else
                message = "You're bumping in to a mountain, my guy..."
            end
        when "q"
            direction = "q"
            puts "Goodbye!"
    end

    use_grid[pX][pY] = "@"

end


# #make a hidden key grid
# hidden_grid = Array.new(5) {Array.new(5) {0}}
# hidden_grid[1][2] = 2 #add wall
# hidden_grid[3][3] = 2 #add wall
# hidden_grid[4][4] = 1 #add treasure