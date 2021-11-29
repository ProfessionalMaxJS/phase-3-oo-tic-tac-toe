require 'pry'

class TicTacToe

attr_accessor :board, :board_space, :turn_counter
attr_reader :WIN_COMBINATIONS

def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
end
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end


def input_to_index(space)
    board_space = (space.to_i)-1
    # binding.pry
end

def move(space, token="X")
    # @turn_counter+=1
    # @space=space
    # self.input_to_index(space)
    @board[space] = token    
end

def position_taken?(space)
    # binding.pry
    @board[space] != " "
end

def valid_move?(space)
    @board[space] == " "
end

def turn_count
    @turn_counter=0
    board.map do |b|
        # binding.pry
    if b == "X" || b=="O"
        @turn_counter+=1
    end
    end
    @turn_counter
end

def current_player
    # binding.pry
    self.turn_count
    if @turn_counter%2==0
        "X"
    else
        "O"
    end
end

def turn
    puts "make your move"
    playa_move = STDIN.gets
    nextant = input_to_index(playa_move)
    if valid_move?(nextant)
        move(nextant,current_player)
        turn_counter
        display_board
    else
        puts "invalid"
        turn
    end
end
# binding.pry

end