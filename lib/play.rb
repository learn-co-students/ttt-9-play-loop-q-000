# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
  # a player's move is the input - 1 for the array; current player being X
  board[location.to_i-1] = current_player
end

def position_taken?(board, location)
  # the position is taken when the location is not empty and nil
  board[location] != " " && board[location] != ""
end

def valid_move?(board, position)
  # the move is valid when the position is between 1-9 and not taken
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  # if the move is valid
  if valid_move?(board, input)
    # the move is inputted into the array
    move(board, input)
  else
    # loops the method again
    turn(board)
  end
  # displays the board
  display_board(board)
end

# Define your play method below

def play(board)
  i = 0 
  while i < 9
    turn(board)
    i += 1
  end
end



