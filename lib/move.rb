def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
index = user_input.to_i
index = index - 1
end

def move(board, index, character="X")
  board[index] = character
end
  
  def valid_move?(board, index)
   !(position_taken?(board, index)) && index <10 && index >= 0
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
 elsif board[index] == " " || "" || nil
   return false
end
end