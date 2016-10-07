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
    puts "Invalid entry"
    turn(board)
  end
end

def open_positions(board)
  index = 0
  open_count = 0
  while index<9
    if !position_taken?(board,index)
      open_count +=1
    end
    index+=1
  end
return open_count
end

# Define your play method below
def play(board)
  winner = 0
  while winner==0 && open_positions(board) > 0
    turn(board)
    if position_taken?(board,0) && ((board[0]==board[1] && board[1]==board[2]) || (board[0]==board[3] && board[3]==board[6]) || (board[0]==board[4] && board[4]==board[8]))
      winner = 1
    elsif position_taken?(board,4) && ((board[1]==board[4] && board[4]==board[7]) || (board[3]==board[4] && board[4]==board[5]) || (board[2]==board[4] && board[4]==board[6]))
      winner = 1
    elsif position_taken?(board,8) && ((board[2]==board[5] && board[5]==board[8]) || (board[6]==board[7] && board[7]==board[8]))
      winner = 1
    else
      winner=0
    end
  end
end
