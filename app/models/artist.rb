class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    self.all.sum { |artist| artist.years_experience }
  end

  def self.most_prolific
    artist_effort = self.all.sort_by { |artist| artist.paintings.count.to_f / artist.years_experience }
    artist_effort[-1]

  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
