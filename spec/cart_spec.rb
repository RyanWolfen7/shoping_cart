require './lib/cart.rb'

describe Cart do
  describe '#initialize' do
    it 'should have an array for the basket' do
      cart = Cart.new
      expect(cart.basket).to be_a(Array)
    end
  end
  describe '#add_item' do
    it 'should add an item to the basket array' do
      cart = Cart.new
      expect(cart.add_item("tool")).to eq ["tool"]
    end
  end
  describe '#find_total' do
    it 'should add up all the array hash values' do
      cart = Cart.new
      cart.basket << {tool: 1}
      cart.basket << {broom: 7}
      cart.basket << {shovel: 2}
      p cart.basket
      expect(cart.find_total).to eq 10
    end
  end
end
