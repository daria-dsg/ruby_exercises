require_relative 'board'
require 'byebug'

class HanoiTower
  attr_reader :board

  def initialize(size)
    @board = Board.new(size)
  end

  def move(start_pile, end_pile)
    raise "Start pile is empty" if board[start_pile].empty?
    raise "End pile has smaller disque" unless valid?(start_pile, end_pile)

    disque = board[start_pile].shift
    board[end_pile].unshift(disque)
  end

  def valid?(start_pile, end_pile)
     return true if board[end_pile].empty?
     board[start_pile][0] < board[end_pile][0]
  end

  def won?
    pile = (1 .. board.size).to_a
    board.piles.last == pile &&
       board.piles[0 ... -1].all?(&:empty?)
  end

  def prompt(pile)
    print "Enter the #{pile} pile: "
    pile = gets.chomp.to_i - 1
    raise "Pile is not valid" unless pile.between?(0, board.size)
    pile 
  end

  def play
    until won?
      begin
        system("clear")
        board.render
        start_pile, end_pile = prompt("starting"), prompt("ending")
        move(start_pile, end_pile)
      rescue RuntimeError => e
        puts "#{e.message}. try again"
        sleep 0.75
        retry
      end
      sleep 0.75
    end

    print "Congratulations! You solved the puzzle!"
  end
end