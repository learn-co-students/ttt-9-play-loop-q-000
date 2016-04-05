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
  # returns true if space is taken
  board[location] != " " && board[location] != ""
  puts "#{board[location]} is board[location]"
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

# Define your play method below
def play(board)
  counter = 0
  while counter < 9
    turn(board)
    counter += 1
  end
end

def is_over?(board)
  # if all positions are taken
  if position_taken?(board, 0) && position_taken?(board, 1) && position_taken?(board, 2) && position_taken?(board, 3) && position_taken?(board, 4) && position_taken?(board, 5) && position_taken?(board, 6) && position_taken?(board, 7) && position_taken?(board, 8)
    # the game is over
    puts "the game is over"
    true
  else
    puts "the game is not over"
    false
  end
end
