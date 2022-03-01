# This kata is about implementing a simple tennis game. 
# I came up with it while thinking about Wii tennis, where they have simplified tennis, 
# so each set is one game. The scoring system is rather simple:

# Each player can have either of these points in one game 0 15 30 40

# If you have 40 and you win the ball you win the game, however, there are special rules.

# If both have 40 the players are deuce.

# After deuce, the winner of a ball will have advantage and game ball.
# If the player with advantage wins the ball he wins the game
# If the player without advantage wins they are back at deuce.
# A game is won by the first player to have won at least four points in total and at least 
# two points more than the opponent.
# The running score of each game is described in a manner peculiar to tennis: scores 
# from zero to three points are described as “love”, “fifteen”, “thirty”, and “forty” respectively.
# If at least three points have been scored by each player, and the scores are equal, the score is “deuce”.
# If at least three points have been scored by each side and a player has one more point than his opponent, 
# the score of the game is “advantage” for the player in the lead.

class Tennis

    def initialize
        @player_one = 0
        @player_two = 0
    end

    def add_point player
        if player == "one"
            @player_one += 1
        elsif player == "two"
            @player_two += 1
        end
    end

    def get_score_player_one
        if @player_one > 4 && (@player_one - @player_two) >= 2
            "won the game"
        elsif @player_one > 4 && (@player_one - @player_two) == 0
            "deuce"
        else
            show_score @player_one
        end
    end

    def get_score_player_two
        if @player_two > 4 && (@player_two - @player_one) >= 2
            "won the game"
        elsif @player_two > 4 && (@player_two - @player_one) ==0
            "deuce"
        else
            show_score @player_two
        end
        
    end

    private

    def show_score number
        if number == 1
            "love"
        elsif number == 2
            "15"
        elsif number == 3
            "30"
        elsif number == 4
            "40"
        elsif number == 5
            "advantage"
        end
    end

end