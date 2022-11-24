require 'board'
require 'byebug'

describe Board do
  subject (:board) { Board.new(4) }

  describe "#initialize" do 
    it "takes a number as an argument" do
      expect(board.size).to eq(4)
    end

    it "creates a piles of discs" do 
      expect(board.piles).to eq([[1, 2, 3, 4],[],[]])
    end
  end
end