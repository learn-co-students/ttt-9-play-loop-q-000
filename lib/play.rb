
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
  board[index.to_i - 1] = current_player
end

def position_taken?(board, location)
  if board[location] != " " && board[location] != ""
    true
  else
    false
  end
end

def valid_move?(board, index)
  position = index.to_i - 1
  if position.between?(0,8) && !position_taken?(board,position)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board,input)
    display_board(board)
  else
    puts "Please try a valid input!"
    display_board(board)
    turn(board)
  end
end

def play(board)
      turn_count = 0
      while turn_count < 9 do
        turn(board)
        turn_count += 1
  end
end
