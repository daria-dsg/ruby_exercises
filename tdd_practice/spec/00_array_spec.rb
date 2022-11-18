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

   it "find zero sum pairs" do
     expect(pairs).to eq([[0, 4], [2, 3]])
   end
end

describe "#my_transpose" do
  let(:array) { 
      [[0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]]
      }

  let(:transposed_array) {
                [[0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]]
                }

  it "converts row to columns and columns to row" do
    expect(my_transpose(array)).to eq (transposed_array)
  end

  it "returns array with the same length as original array" do
     expect(my_transpose(array).length).to eq(array.length)
  end
end





