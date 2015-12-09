# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = (position.to_i - 1)
  if (position.between?(0,8) == true) && (position_taken?(board,position) == false)
    return true
  else 
    return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, position, character = "X")
  position = position.to_i
  board[position - 1] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position)
  else
    turn(board)
  end
  display_board(board)
end

# Define your play method below

def play(board)
  i = 0
  while i < 9
    i += 1
    turn(board)
  end
end
