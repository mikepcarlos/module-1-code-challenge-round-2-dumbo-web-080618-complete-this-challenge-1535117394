require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#viewers
meryl = Viewer.new("Meryl", "Dakin")
nathan = Viewer.new("Nathan", "Johnson")
#genres
action = Genre.new("Action")
romance = Genre.new("Romance")
#movies
baby_driver = Movie.new("Baby Driver", action)
matrix = Movie.new("The Matrix", romance)
big_sick = Movie.new("The Big Sick", romance)
#ratings
rating = Watchlist.new(baby_driver, meryl)
rating2 = Watchlist.new(matrix, meryl)
rating3 = Watchlist.new(baby_driver, nathan)
rating4 = Watchlist.new(matrix, nathan)
rating5 = Watchlist.new(big_sick, nathan)

Pry.start
