require_relative 'board'
require 'byebug'

class HanoiTower
  attr_reader :board, :size

  def initialize(size)
    @board = Board.new(size)
    @size = size
    @piles = board.piles
  end

  # def move(start_pile, end_pile)
  #   disque = board[[start_pile,0]]
  #   raise "an empty pile" if disque == nil
    
  #   board[[start_pile,0]], board[[end_pile, size - 1]] = nil, disque
  # end

  def move(start_pile, end_pile)
    piles.each do |pile|
      next if disque == nil
      
      disque = board[[start_pile,0]]
      board[[start_pile,0]], board[[end_pile, size - 1]] = nil, disque
      return
    end

    raise "an empty pile"
  end

  def play
    print "Enter the start pile: "
    start_pile = gets.chomp.to_i - 1

    print "Enter the end pile: "
    end_pile = gets.chomp.to_i - 1
    move(start_pile, end_pile)
  end

end