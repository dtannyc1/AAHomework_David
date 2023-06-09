require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :titleize => "Chef") }
  subject(:dessert) { Dessert.new("cake", 5, chef)}

  describe "#initialize" do
    it "sets a type" do
        expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
        expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
        expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
        expect {Dessert.new("cake", "cake", "cake")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
        dessert.add_ingredient("flour")
        expect(dessert.ingredients[-1]).to eq("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
        dessert.add_ingredient("flour")
        dessert.add_ingredient("sugar")
        dessert.add_ingredient("baking soda")
        dessert.add_ingredient("eggs")
        first_list = dessert.ingredients.dup
        dessert.mix!
        second_list = dessert.ingredients
        expect(first_list).to_not eq(second_list)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
        expect(dessert.eat(1)).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
        expect {dessert.eat(6)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
        expect(dessert.serve).to include("Chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
        expect(chef).to receive(:bake).with(dessert)
        dessert.make_more
    end
  end
end
