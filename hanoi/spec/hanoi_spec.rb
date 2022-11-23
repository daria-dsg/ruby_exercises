require 'hanoi'
require 'byebug'

describe HanoiTower do 
  subject(:hanoi) { HanoiTower.new(4) }
   
  describe "#move" do
    before(:each) do
      hanoi.move(0,1)
    end
   
    it "moves disque from one pile to other" do 
      expect(hanoi.board[[1,3]]).to eq(1)
      expect(hanoi.board[[0,0]]).to eq(nil)
    end

    it "raise en error when start pile is empty or not valid" do
       expect{ hanoi.move(2,1) }.to raise_error(RuntimeError)
    end

    it "raise en error when end pile has the smaller disque on the bottom " do 
      
    end

    # it "moves only disques" do
    #   hanoi.move(0,2)
    #   expect(hanoi.piles).not_to eq (hanoi.piles)
    #   expect(hanoi.piles).to eq([[nil, nil, 3, 4], [nil, nil, nil, nil], [nil, nil, nil, nil]])
    # end
  end
end