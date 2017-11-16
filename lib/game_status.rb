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
    if board[win_index] == "X"
      puts "Game won at #{win_index}"
      return true
    else
      return false

  end
end
end


def full?(board)
end
