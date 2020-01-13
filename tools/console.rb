require_relative '../config/environment.rb'

a_names = ['Axel','Bertha','Carrie','Dennis']
a_years = [5,20,24,13]

g_names = ['NYMOMA','SFMOMA','Londong MOMA','Berlin Kunstmuseum']
g_cities = ["NY","SF","London","Berlin"]

(0..3).each { |i| Artist.new(a_names[i],a_years[i]) }
(0..3).each { |i| Gallery.new(g_names[i],g_cities[i]) }

a = Artist.all
g = Gallery.all

p_titles = []
p_prices = [345,533,734,246,852,942,945,780,546,654,443,212]

def rand_string
    charset = Array('A'..'Z')
    Array.new(10) { charset.sample }.join
end
###### FROM https://www.rubyguides.com/2015/03/ruby-random/
###### SHOWS HOW TO CREATE RANDOM STRING GENERATOR

12.times do
    # title, price, artist, gallery
    Painting.new(rand_string,rand(100..999),a[rand(4)],g[rand(4)])
end

p = Painting.all


binding.pry

puts "Bob Ross rules."
