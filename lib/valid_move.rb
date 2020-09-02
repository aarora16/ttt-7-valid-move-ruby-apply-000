# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index <= 8
    true
  else 
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  case board[index]
  when valid_move?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    elsif board[index] == "X" || board[index] == "O"
      false
    else
      true
    end
  end
end

def execute
  if position_taken?(board, index) && valid_move?(board, index)
    true
  else
    false
  end
end

execute