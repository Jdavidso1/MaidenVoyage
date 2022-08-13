require './GameLectureFloor.rb'

class Lavav < Floor
    def initialize
        @token = "~ "
        @on_fire = true
        @is_goal = false
        @can_walk = true
    end

    def step_on player
        #should anything happen? yes, remove symbol and increase score
        player.score = player.score - 10
    end
end