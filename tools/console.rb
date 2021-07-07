require_relative '../config/environment.rb'

a1 = Artist.new("Adam", 13)
a2 = Artist.new("Sean", 10)
a3 = Artist.new("Chance", 7)

g1 = Gallery.new("ABC Gal", "Philly")
g2 = Gallery.new("XYZ Gal", "NYC")

p1 = Painting.new("Mona Lisa", 1000, a1, g1)
p2 = Painting.new("Pieta Remix", 750, a2, g2)
p3 = Painting.new("Sistine", 2000, a1, g2)
p4 = Painting.new("Vitruvian Woman", 1500, a3, g2)



binding.pry

puts "Bob Ross rules."
