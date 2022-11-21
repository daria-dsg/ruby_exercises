require 'hanai_tower'

describe HanaiTower do
  subject (:game) {HanaiTower.new(4)}

  describe "#initialize" do 
    it "takes a number as an argument" do
      expect(game.size).to eq(4)
    end

    it "creates a piles of discs" do 
      expect(game.piles[0]).to eq([1, 2, 3, 4])
    end
  end
end