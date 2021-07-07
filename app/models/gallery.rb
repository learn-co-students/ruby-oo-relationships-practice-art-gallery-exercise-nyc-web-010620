class Gallery

  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artist_names
    self.paintings.map { |painting| painting.artist.name }
  end

  def most_expensive_painting
    painting_value = self.paintings.sort_by { |painting| painting.price }
    painting_value[-1]
  end

end
