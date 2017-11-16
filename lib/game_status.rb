# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]

]


def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    compare = board.values_at(win_index)
    puts "#{compare}"
    if compare.count("X") == 3
      puts "Game won at position: #{win_index}"
      return win_index
    else
      return false
    end

  end
end


def full?(board)
  if board.count(" " || "") == 0
    return true
  else
    return false
  end
end
