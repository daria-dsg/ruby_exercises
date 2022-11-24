require_relative 'board'

class HanoiTower
  attr_reader :board

  def initialize(size)
    @board = Board.new(size)
  end

  def move(start_pile, end_pile)

  end

  def prompt(pile)
    print "Enter the #{pile} pile: "
    gets.chomp.to_i - 1
  end

  def play
    start_pile, end_pile = prompt("starting"), prompt("ending")
    move(start_pile, end_pile)
  end
end