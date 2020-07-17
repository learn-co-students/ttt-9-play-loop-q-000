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
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


# Def turn_count to keep track of turn #
def turn_count(board) # determine what turn it is
  turn_num = 0
  board.each do |mark|
    if mark == "X" || mark == "O"   # For each "X" or "O" in (board)
      turn_num += 1  # add 1 to turn_num
    end
  end
  return turn_num # return current turn_num
end

# Define your play method below
def play(board)
  while turn_num < 9
    turn(board)
    turn_num += 1
  end
end