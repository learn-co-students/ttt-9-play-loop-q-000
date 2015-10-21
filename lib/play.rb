# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def turn(board, counter)
  puts "Please enter 1-9:"
  if counter%2==1 
    char = "X"
  else
    char = "O"
  end
  
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, char)
  else
    turn(board)
  end
  display_board(board)
end

# Define your play method below
def play(board)
  counter = 1;
  while counter <= 9
    turn(board, counter)
    counter+=1
  end
end
