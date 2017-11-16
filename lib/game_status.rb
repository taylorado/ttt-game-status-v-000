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
  WIN_COMBINATIONS.each_with_index do |win_index1, win_index2, win_index3|
    puts "hello #{win_index3}"
    if board[win_index1] == "X" && board[win_index2] == "X" && board[win_index3] == "X"
      puts "Game won at positions: #{win_index1}, #{win_index2}, #{win_index3}"
      return true
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
