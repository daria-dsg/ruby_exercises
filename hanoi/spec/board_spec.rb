require 'board'
require 'byebug'

describe Board do
  subject (:board) { Board.new(4) }

  describe "#initialize" do 
    it "takes a number as an argument" do
      expect(board.size).to eq(4)
    end

    it "creates a piles of discs" do 
      expect(board.piles[0]).to eq([1, 2, 3, 4])
    end

    it "raise en error when start pile or end pile are not valid" do
      expect{ board[[3,1]]}.to raise_error(RuntimeError)
   end

  end
end