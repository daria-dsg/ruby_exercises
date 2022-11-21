require_relative 'board'

class Game
  attr_reader :board

  def initialize(size)
    @board = Board.new(size)
  end

  def move(start_pile, end_pile)
    board[[start_pile, 0]],board[[end_pile, 0]] = nil, board[[start_pile, 0]]
  end

  def play
    print "Enter the start pile: " 
    start_pile = gets.chomp.to_i - 1

    print "Enter the end pile: "
    end_pile = gets.chomp.to_i - 1
    move(start_pile, end_pile)
  end

end