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
      if x == "X" || x == "O"
        turns += 1
      end
    end
    turns
  end
  
  def current_player
    if turn_count % 2 == 0
      "X"
    else
      "O"
    end
  end
  
  def won?
    WIN_COMBINATIONS.detect do |combo|
      if @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
        combo
      elsif
        @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
        combo
      elsif
        false
      end
    end
  end
  
  def full?
    @board.all? {|x| x != " "}
  end
  
  def draw?
    !won? && full?
  end
  
  def over?
    draw? || won? || full?
  end
  
  def winner
    WIN_COMBINATIONS.detect do |combo|
      if @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
        return "X"
      elsif
        @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
        return "O"
      elsif
        nil
      end
    end
  end
  
  def play
    
  end
end




