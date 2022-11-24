require 'hanoi'
require 'byebug'

describe HanoiTower do 
  subject(:hanoi) { HanoiTower.new(4) }
   
  describe "#move" do
    before(:each) do
      hanoi.move(0,1)
    end
   
    it "moves disque from one pile to other" do 
      expect(hanoi.board.piles[1][0]).to eq(1)
      expect(hanoi.board.piles[0][0]).to eq(2)
    end
    
    it "raises en exception when start pile is empty" do
       expect{ hanoi.move(2,1) }.to raise_error(RuntimeError)
    end

    it "raises an exception when start or ending piles are not valid" do 
    end

    it "does not move the disque  when end pile has the smaller disque on the bottom " do 
      
    end
  end
end