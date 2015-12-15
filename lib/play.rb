# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
	if valid_move?(board,location)
		 board[location.to_i-1] = current_player
	end
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end
# Define your play method below

def turn(board)
	puts "Please enter 1-9:"
	location = gets
	move(board, location, current_player='X')
	display_board(board)
end

def play(board)
	counter = 0
	while counter < 9
		turn(board)
		counter += 1
	end
end
