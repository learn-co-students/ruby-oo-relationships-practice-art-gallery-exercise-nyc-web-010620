class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price

    @@all << self
  end

  def self.all #Painting.all - Returns an array of all the paintings
    @@all
  end

  def self.total_price #Painting.total_price - Returns an integer that is the total price of all paintings
    @@all.select{|pieces| pieces.price}.inject(:+)
  end

end
