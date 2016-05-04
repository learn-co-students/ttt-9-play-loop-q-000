def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position_int = position.to_i - 1
  if position_int.between?(0, 8) && !position_taken?(board, position_int)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  position_int = position.to_i
  if board[position_int] == nil || board[position_int] == "" || board[position_int] == " "
    return false
  else
    return true
  end
end

def move(board, position, char="X")
  position_int = position.to_i - 1
  board[position_int] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  while !valid_move?(board, position)
    puts "Please enter 1-9:"
    position = gets.strip
  end
  board = move(board, position)
  display_board(board)
  return board
end

def turn_count(board)
  position = 0
  turns = 0
  while position < board.size
    if position_taken?(board, position)
      turns += 1
    end
    position += 1
  end
  return turns
end

# Define your play method below
def play(board)
  9.times do
    board = turn(board)
  end
end