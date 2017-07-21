class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def watchlist
    Watchlist.all.select { |watchlist| watchlist.viewer == self }
  end

  def create_or_edit_rating(movie, rating)
    movie_watch = watchlist.find { |w| w.movie == movie }
    movie_watch.rating = rating
  end

  def add_to_watchlist(movie_array)
    movie_array.each { |movie| Watchlist.new(movie, self) }
  end

end
