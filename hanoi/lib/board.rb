class Board
  attr_reader :size, :piles
  attr_accessor :piles

  def initialize(size)
    @size = size
    @piles = Array.new(3) { Array.new }
    populate
  end

  def populate
    size.times { |i| piles[0] << i + 1 }
  end

  def render
    puts
    piles.each do |pile|
       pile.each do |disque|
         puts disque unless disque == nil
       end
       print "_____"
       print "  "
    end
  end
end