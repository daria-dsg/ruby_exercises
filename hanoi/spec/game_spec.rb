require 'game'

describe Game do 
  subject(:game) { Game.new(4) }
   
  describe "#move" do
   
    it "moves disque from one pile to other" do 
      game.move(0,1)
      expect(game.board[[1,0]]).to eq(1)
      expect(game.board[[0,0]]).to eq(nil)
    end

    # it "raise en error when start pile is empty" do
    #    expect { game.move(1,2) }.to raise_error(ArgumentError)
    # end

    # it "raise en error when end pile has the smaller disque on the bottom" do 

    # end
  end
end