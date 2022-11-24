require 'hanoi'
require 'byebug'

describe HanoiTower do 
  subject(:hanoi) { HanoiTower.new(4) }
   
  describe "#move" do
    before(:each) do
      hanoi.move(0,2)
    end
   
    it "moves disque from one pile to other" do 
      expect(hanoi.board[2][0]).to eq(1)
      expect(hanoi.board[0][0]).to eq(2)
    end

    it "raises en exception when start pile is empty" do
       expect{ hanoi.move(1,2) }.to raise_error(RuntimeError)
    end

    it "raises an exception when end pile has the smaller disque on the bottom " do 
      expect{ hanoi.move(0,2) }.to raise_error(RuntimeError)
    end
  end

  # describe "#won" do 
  #   it "returns true when all disque at the last pile" do
  #     expect(hanoi.move).
  #   end

  #   it "returns false when not all disque at the last pile" do 
  #   end
  # end
end