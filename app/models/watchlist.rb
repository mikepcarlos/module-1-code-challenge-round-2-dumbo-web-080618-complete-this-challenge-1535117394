class Watchlist
  attr_accessor :movie, :viewer, :rating
  @@all = []

  def initialize(movie, viewer)
    @movie = movie
    @viewer = viewer
    self.class.all << self
  end

  def self.all
    @@all
  end

end
