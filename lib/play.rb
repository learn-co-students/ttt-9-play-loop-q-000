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

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end

def play(board)
  turns = 0
  until turns == 9
    turns+=1
    turn(board)
  end
end

def turn_count(board)
    counter = 0
    board.each do |turn|
    if turn == "X" || turn == "O"
      counter += 1
      puts "#{counter}" 
    end
end

def current_player
 if turn_count(board) % 2 == 0 #even turn put 0
   "X"
 end
 if turn_count(board) % 2 == 1 #odd turn put 1
   "O"
 end
end

