def turn_count(board)
  turn_count(board) % 2 == 0? "X": "O"
end

def current_player(board)
  counter = 0
  board.each do |l|
    if l == "X" || l == "0"
      counter += 1
    end
  end
  return counter
end
end