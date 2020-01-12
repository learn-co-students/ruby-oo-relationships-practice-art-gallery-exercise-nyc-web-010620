class Artist

  attr_reader :name, :years_experience
  attr_accessor :paintings, :galleries
  @@all = []

  def initialize(name, years_experience)
    @@all << self
    @name = name
    @years_experience = years_experience
    @paintings = []
    @galleries = []
  end

  def self.all # Artist.all - Returns an array of all the artists
    @@all
  end

  def cities #Artist#cities - Return an array of all cities that an artist has paintings in
    @galleries.select{|gallery| gallery.location}
  end

  def self.total_experience# Artist.total_experience - Returns an integer that is the total years of experience of all artists
    @@all.select{|artist| artist.years_experience}.inject(:+)
  end

  def self.most_prolific# Artist.most_prolific - Returns an instance of the artist with the highest amount of paintings per year of experience.
    most = 0
    instance = nil
    @@all.each{|artist| 
      if artist.paintings.length / years_experience > highest
        most = artist.paintings.length / years_experience
        instance = artist
      }
      return instance
  end


end
