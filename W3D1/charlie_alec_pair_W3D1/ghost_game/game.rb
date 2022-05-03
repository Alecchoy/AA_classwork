require 'set'
require_relative "./player.rb"
require "byebug"

class Game
    attr_reader :dictionary, :players, :fragment
    attr_accessor :player_index
    def initialize(p1, p2)
        @players = [p1, p2]
        @fragment = ""
        file = File.open("dictionary.txt")
        @dictionary = Hash.new { |h,k| h[k] = Set.new}

        file.readlines.each do |line|
            word = line.chomp
            @dictionary[""].add(word[0]) #bruh need this first
            (0...word.length-1).each do |i|
                @dictionary[word[0..i]].add(word[i+1])
            end
            @dictionary[word].add("*")
        end
        @player_index = 0
    end

    def current_player
        @players[@player_index]
    end

    def previous_player
        @players[@player_index - 1]
    end

    def next_player!
        @player_index += 1
        if @player_index == @players.length
            @player_index = 0
        end
    end
    
    def take_turn(player) 
        p "Current Word: " + @fragment
        g = player.guess
        if valid_play?(g)
            @fragment += g
            if dictionary[@fragment].include?("*")
                return true
            else
                return false
            end
        else
            raise InputError.new("Invalid Input!")
        end
    rescue
        p "Invalid input or no such word exists"
        retry
    end

    def valid_play?(string)
        alphabet = "abcdefghijklmnopqrstuvwxyz"
        return (alphabet.include?(string) && string.length == 1 && dictionary[@fragment].include?(string))     
    end

    def play_round
        while true
            if(take_turn(current_player))
                current_player.losses += 1
                p "#{current_player.name} lost!"
                break;
            else
                next_player!
            end
        end
    end

    def record(player)
        lose = "GHOST"
        lose[0...player.losses]
    end

    def run
        done = false
        i = 0
        while !done
            play_round
            @players.each do |player|
                p "#{player.name} : " + record(player)
                if player.losses >= 5
                    done = true
                    p "#{player}, you lose!!! haha"
                end
            end
            @fragment = "" #reset fragment
        end
    end
end

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
g = Game.new(p1, p2)
g.run