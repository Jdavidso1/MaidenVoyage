require 'io/console' # this is needed for STDIN.getch to work
require './GameLectureFloor.rb'
require './GameLectureTreasure.rb'

# TO DO
# Don't let player walk off edge
# Make a thing to pick up

# DONE
# Create a board
# Show the board
# Show the player
# Walk around the board
# Make it so direction key is effectively "enter"

# grid = Array.new(10)

# Array.new(10) is the same as [nil, nil, nil, nil...]
# Array.new(10){1} is the same as [1, 1, 1, 1...]

#two-dimensional array for grid with every position as a dot
grid = Array.new(10) { Array.new(10) {Floor.new} }


class Player
    # should hold x and y for the player... "attribute accessor"
    attr_accessor :X
    attr_accessor :y    
    attr_accessor :token
    attr_accessor :score

    def initilize
        # the @ says use the one that exists in the upper space, not just the scope of this code
        @token = "@ "
        @score = 0
    end
end

# player location hard-coded without variables
#grid[3][3] = "@"

# need to track player location with independent position variables
# rows and columns are kinda inverted from typical x & y positioning

#hero = ""               #same thing
#hero = String.new       #same thing
hero = Player.new

# defining the draw_grid function and variables
# this loop isn't [3,3] but rather the array and position in the array
# rewrite if we want to reference with actual player position instead of just assigning character value
def draw_grid grid, hero
    #grid.each do |row|
    (0...10).each do |grid_y|
        #row.each do |cell|
        (0...10).each do |grid_x|
            if (grid_x == player.x && grid_y == player.y)
                print player.token
            else
                print grid[grid_y][grid_x].token
            end
            #print cell
            # which cell is this currently?
            # if I'm where the player is, draw "@" instead of whatever floor tile is
        end
        puts
    end
    puts "Player X is #{player.x}"
    puts "Player Y is #{player.y}"
    puts "Score is #{player.score}"
end

hero.x = 3
hero.y = 3

grid[5][7] = Treasure.new
#grid[6][1] = "%" # spike trap
#grid[1][9] = "=" # wall

#draw_grid function
draw_grid grid, hero

keep_playing = true
while(keep_playing)

    puts "What direction do you want to go? (user w, a, s, d, or q to quit)"
    direction = STDIN.getch

    grid[player_y][player_x] = ". "

    if direction == "w"
        if hero.y > 0
            hero.y = hero.y - 1
        end
    elsif direction == "a"
        if hero.x > 0
            hero.x = hero.x - 1
        end
    elsif direction == "s"
        if hero.y < 9
            hero.y = hero.y + 1
        end
    elsif direction == "d"
        if hero.x < 9
            hero.x = hero.x + 1
        end
    elsif direction == "q"
        keep_playing = false
        puts "Goodbye!"
    end

    # Here is whre I see what I'm standing on
    grid[hero.y][hero.x].step_on hero
    if grid[hero.y][hero.x] == "$"
        # I've stood on a $
        score = score + 100
        # does it go away after we step on it?
        # let's assume it's a bag of money you pick up for this example...
        grid[hero.y][hero.x] = ". "
    end

    #grid[player_y][player_x] = "@ "
    draw_grid grid, hero

end