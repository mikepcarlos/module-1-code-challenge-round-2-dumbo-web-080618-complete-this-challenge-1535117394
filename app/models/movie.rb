class Movie
  attr_accessor :title, :genre

  @@all = []
  def initialize(title, genre)
    @title = title
    @genre = genre
    self.class.all << self
  end

  def self.all
    @@all
  end

  def watched_movies
    Watchlist.all.map {|watchlist| watchlist.movie }
  end

  def self.highest_rated
    watched_movies.map
  end

  def self.mass_assign_genre(title_list, genre)
    movie_array = title_list.map { |title| Movie.all.find { |movie| movie.title == title } }
    movie_array.each { |movie| movie.genre = genre }
  end

  def viewers
    watchlists = Watchlist.all.select { |watchlist| watchlist.movie == self }
    watchlists.map { |watchlist| watchlist.viewer }
  end

  def average_rating
    watchlists = Watchlist.all.select { |watchlist| watchlist.movie == self }
    total_ratings = watchlists.reduce(0) do |sum, list|
      list.rating ? sum + list.rating : nil
    end
    total_ratings ? total_ratings/watchlists.length : "No ratings for this film."
  end

end
