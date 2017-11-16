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
  if board.count("X"||"O") == 0     # initial check for an empty board
    return false
  else
      WIN_COMBINATIONS.each do |win_index|
        position_1 = board[win_index[0]]
        position_2 = board[win_index[1]]
        position_3 = board[win_index[2]]
        if (position_1 == "X" && position_2 == "X" && position_3 == "X")
          #  puts "Game won in position: #{win_index}"
          return win_index
        elsif  (position_1 == "O" && position_2 == "O" && position_3 == "O")
          return win_index
          #  puts "Game won in position: #{win_index}"

        else
          false
        end
      end
    end
end


def full?(board)
  if board.count("X") + board.count("O") == 9
    return true
  else
    return false
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true

  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  elsif board.count("X"||"O") <= 9 && !won?(board)
    return false
  else
    false
  end
end
