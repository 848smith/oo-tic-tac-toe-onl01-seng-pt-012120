class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(x)
    x.to_i - 1
  end
  
  def move(index, token)
    @board[index] = token
  end
  
  def position_taken?(x)
    @board[x] == "X" || @board[x] == "O"
  end
  
  def valid_move?(x)
    x.between?(0,8) && !position_taken?(x)
  end
  
  def turn
    puts "Please make a move by putting a number 1-9."
    input = gets.strip
    index = input_to_index(input)
    token = current_player
    if valid_move?(index)
      move(index, token)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    turns = 0
    @board.each do |x|
      if space == "X" || space == "O"
        turns += 1
      end
    end
    turns
  end
  
  def current_player
end




