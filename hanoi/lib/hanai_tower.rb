class HanaiTower
  attr_reader :size, :piles
  attr_accessor :piles

  def initialize(size)
    @size = size
    @piles = Array.new(3) { Array.new(size) }
    populate
  end

  def populate
    (1 .. size).each do |disque|
       pos = disque - 1
       @piles[0][pos] = disque
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