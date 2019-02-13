class Cart
  attr_reader :basket

  def initialize
    @basket = []
  end

  def add_item(item)
    @basket << item
  end

  def find_total
    total = 0
    @basket.each do |x|
      x.each{|key, value| total += value} 
    end
    return total
  end
end
