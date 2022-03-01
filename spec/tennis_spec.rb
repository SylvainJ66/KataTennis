require 'rspec'
require './model/tennis'

RSpec.describe "Tennis" do

    it "DoNothing" do
        expect(true).to eq(true)
    end

    it "Player 1 won the first ball" do
        tennis = Tennis.new
        tennis.add_point "one"
        expect("love").to eq(tennis.get_score_player_one)
    end

    it "Player 1 won the second ball" do
        tennis = Tennis.new
        2.times do
            tennis.add_point "one"
        end
        expect("15").to eq(tennis.get_score_player_one)
    end

    it "Player 1 won the third ball" do
        tennis = Tennis.new
        3.times do
            tennis.add_point "one"
        end
        expect("30").to eq(tennis.get_score_player_one)
    end

    it "Player 1 won the fourth ball" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
        end
        expect("40").to eq(tennis.get_score_player_one)
    end

    it "Player 2 won his first ball" do
        tennis = Tennis.new
        tennis.add_point "two"
        expect("love").to eq(tennis.get_score_player_two)
    end

    it "Player 2 won his second ball" do
        tennis = Tennis.new
        2.times do
            tennis.add_point "two"
        end
        expect("15").to eq(tennis.get_score_player_two)
    end

    it "Player 1 and player 2 have 40 points and player 1 score" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
            tennis.add_point "two"
        end
        tennis.add_point "one"
        expect("advantage").to eq(tennis.get_score_player_one)
        expect("40").to eq(tennis.get_score_player_two)
    end

    it "Player 1 and player 2 have 40 points and player 2 score" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
            tennis.add_point "two"
        end
        tennis.add_point "two"
        expect("40").to eq(tennis.get_score_player_one)
        expect("advantage").to eq(tennis.get_score_player_two)
    end

    it "Player 1 won the game" do
        tennis = Tennis.new
        5.times do
            tennis.add_point "one"
        end
        expect("won the game").to eq(tennis.get_score_player_one)
    end

    it "Player 2 won the game" do
        tennis = Tennis.new
        5.times do
            tennis.add_point "two"
        end
        expect("won the game").to eq(tennis.get_score_player_two)
    end

    it "Player 1 have advantage and score" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
            tennis.add_point "two"
        end
        2.times do
            tennis.add_point "one"
        end
        expect("won the game").to eq(tennis.get_score_player_one)
        expect("40").to eq(tennis.get_score_player_two)
    end

    it "Player 2 have advantage and score" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
            tennis.add_point "two"
        end
        2.times do
            tennis.add_point "two"
        end
        expect("40").to eq(tennis.get_score_player_one)
        expect("won the game").to eq(tennis.get_score_player_two)
    end

    it "Player 1 and player 2 have 40 and score 1 ball more" do
        tennis = Tennis.new
        4.times do
            tennis.add_point "one"
            tennis.add_point "two"
        end
        tennis.add_point "one"
        tennis.add_point "two"
        expect("deuce").to eq(tennis.get_score_player_one)
        expect("deuce").to eq(tennis.get_score_player_two)
    end
end