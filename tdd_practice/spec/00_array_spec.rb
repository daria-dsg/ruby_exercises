require '00_array'

describe "#my_uniq" do
   let(:array)  { [1, 2, 1, 3, 3] }
   let(:uniq_array) { my_uniq(array.dup) }

   it "removes duplictes" do
      array.each do |num|
         expect(uniq_array.count(num)).to eq(1)
      end
   end

   it "only contain numbers from original array" do 
      uniq_array.each do |num|
         expect(array).to include(num)    
      end
   end

   it "doesn't modify the original array" do
      expect{ my_uniq(array) }.not_to change{array}
   end
end




