require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:tiramisu) { Dessert.new("creamy", 10, chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(tiramisu.type).to eq("creamy")
    end

    it "sets a quantity" do
      expect(tiramisu.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(tiramisu.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("creamy", "10", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
       tiramisu.add_ingredient("coffee") 
       expect(tiramisu.ingredients).to include("coffee")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["eggs", "sugar", "milk", "cream"]

      ingredients.each do |ingredient|
        tiramisu.add_ingredient(ingredient)
      end

      tiramisu.mix!
      expect(tiramisu.ingredients).not_to eq(ingredients)
      expect(tiramisu.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      tiramisu.eat(6)
      expect(tiramisu.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { Dessert.new("creamy", 5, chef).eat(6) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return ("John")
      expect(tiramisu.serve).to include(chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(tiramisu)
      tiramisu.make_more
    end
  end
end
