class Board
  attr_reader :size, :piles
  attr_accessor :piles

  def initialize(size)
    @size = size
    @piles = Array.new(3) { Array.new(size) }
    populate
  end

  def [](pos)
    x,y = pos
    @piles[x][y]
  end

  def []=(pos, val)
    x,y = pos
    @piles[x][y] = val
  end

  def valid_pos?(pos)
    x,y = pos
    x.between?(0,2) && y.between?(0,3)
  end

  def populate
    (1 .. size).each do |disque|
       pos = [0, disque - 1]
       self[pos] = disque
    end
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