require_relative 'board'
require 'byebug'

class HanoiTower
  attr_reader :board

  def initialize(size)
    @board = Board.new(size)
  end

  def move(start_pile, end_pile)
    debugger
    disque = board[[start_pile,0]]
    raise "an empty pile" if disque == nil
    
    board[[start_pile,0]], board[[end_pile, 0]] = nil, disque
  end

  def play
    print "Enter the start pile: "
    start_pile = gets.chomp.to_i - 1

    print "Enter the end pile: "
    end_pile = gets.chomp.to_i - 1
    move(start_pile, end_pile)
  end

end