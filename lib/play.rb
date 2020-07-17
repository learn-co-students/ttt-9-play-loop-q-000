# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
  #new tip: consider the return values for logical flow.
  #here it will return true or false deoending on the location input and the board
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
  # consider the new tip here as well -- logical return follows
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) # the tip applies in if expresions as well
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below (continue)
def play(board)
  board.each_with_index do |toke, int|
      turn(board)
  end
end
