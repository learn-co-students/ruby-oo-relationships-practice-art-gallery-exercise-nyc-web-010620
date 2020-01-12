class Gallery

  attr_reader :name, :city
  attr_accessor :paintings, artists

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @paintings = []
    @artists = []

    @@all << self
  end

  def self.all # Gallery.all - Returns an array of all the galleries
    @@all
  end

  def artist_names # Gallery#artist_names - Returns an array of the names of all artists that have a painting in a gallery
    @artists.select{|artist| artist.name}
  end
  
  def most_expensive # Gallery#most_expensive_painting - Returns an instance of the most expensive painting in a gallery
    record = 0
    @paintings.each{|painting|
      if painting.price > record
        record = painting.price
      end
    }
    return record
  end

end
