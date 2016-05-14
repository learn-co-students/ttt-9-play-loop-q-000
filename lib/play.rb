# Helper Methods

# display tic-tac-toe board
def display_board(display)
    puts " #{display[0]} | #{display[1]} | #{display[2]} "
    puts "------------"
    puts " #{display[3]} | #{display[4]} | #{display[5]} "
    puts "------------"
    puts " #{display[6]} | #{display[7]} | #{display[8]} "
end

# position_taken?
def position_taken?(board, position)
    # if position on the board is empty, or nil then the board is not taken
    if board[position] == "" || board[position] == " " || board[position] == nil
        return false
    # else if the board is not empty, then the position is taken
    else 
        return true
    end
end

# valid_move?
def valid_move?(board, position)
  # translate input (1-9) into array indexing (0-8) on the board
    input = position.to_i - 1
    # if the position is not taken, and the array indexing is between 0 & 8 
    # then it's a valid move, or else it's not a valid move
    if !position_taken?(board, input) && input.between?(0,8)
        return true
    else
        return false
    end
end
# make a move
def move(board, input, n = "X")
    # if the move is valid and the move is either an "X" or "O" 
    # then move to the position that is the input number - 1 for array index
    # and enter either an "X" or "O" in the spot
    # or else the move is invalid
    if valid_move?(board, input) && (n == "X" || n == "O")
        return board[input.to_i - 1] = n
    else
        return false
    end
end

# it's your turn: enter number from 1-9
def turn(board)
    # ask user for their move by position 1-9
    puts "Please enter 1-9:"
    # receiving the user input, make the move, and display the board to the user
    input = gets.strip
    # if the move is invalid, ask for a new move until valid move is received
    if !move(board, input)
        puts "Number is not valid"
        puts "Please enter 1-9:"
        input = gets.strip
    end
    # display the board with the valid move
    display_board(board)
end

# Define your play method below
def play(board)
    # no one made any moves yet so turn is 0
    turn = 0
    # continue to take turns until it reaches turn number 9
    while turn <= 9
        # taking turns on the board as turn increases by 1 and stops at 9
       turn(board)
       turn += 1
    end
end