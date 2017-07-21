class Genre
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.most_watched
    movie_hash = {}
    
    Watchlist.all.each do |watchlist|
      if movie_hash.keys.include?(watchlist.movie)
        movie_hash[watchlist.movie] += 1
      else
        movie_hash[watchlist.movie] = 1
      end
    end

    most_watched_movies = movie_hash.select do |key, value|
      value == movie_hash.values.max
    end

    most_watched_movies.keys.map {|movie| movie.genre.name }
  end


  def movies
    Movie.all.select {|movie| movie.genre == self}
  end

end
