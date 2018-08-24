require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mike = Viewer.new("mikey.likes.movies")
joe = Viewer.new("joedoe21")
susan = Viewer.new("susiesue32")
alice = Viewer.new("aliceinwonderland4")

avengers = Movie.new("Infinity War")
happy_gilmore = Movie.new("Happy Gilmore")
invincibles = Movie.new("The Invincibles")
despicable = Movie.new("Despicable Me")

queue_1 = QueueItem.new(mike, avengers, 4)
queue_2 = QueueItem.new(joe, avengers, 4)
queue_3 = QueueItem.new(alice, avengers, 2)
queue_4 = QueueItem.new(alice, despicable, 3)

Movie.highest_rated

binding.pry
0
