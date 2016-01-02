def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
def move(board, position, player='X')
  board[position.to_i - 1] = player
end
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
def valid_move?(board, position)
  if (position.to_i < 1 || position.to_i > 9)
    return false
  end
  return !position_taken?(board, position)
end
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
def position_taken?(board, position)
  if (board[position.to_i-1] == 'X' || board[position.to_i-1] == 'O')
    return true
  end
  return false
end
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
def turn(board)
 loop do
    puts 'Please enter 1-9:'
    input = gets.strip
    if valid_move?(board, input)
      move(board, input)
      display_board(board)
      break
    end
  end
end
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
def play(board)
  9.times do
    turn(board)
  end
end