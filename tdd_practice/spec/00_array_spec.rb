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

describe "#two_sum" do 
   let(:array)  { [-1, 0, 2, -2, 1] }
   let(:pairs) { two_sum(array) }

   it "return the pairs with sum of 0" do 
     pairs.each { |pair| expect(pair.sum).to eq(0) }
   end

   it "return index between 0 and array length" do 
      pairs.each do |pair|
        pair.each do |num|
          expect(num).to be_between(0, array.length - 1).inclusive
        end
      end
   end

   it "sort array from smaller to bigger indexes" do 
      expect(pairs.sort).to eq(pairs)
   end
end





