class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    queue_items.map do |queue|
      queue.viewer
    end
  end

  def average_rating
    nums = queue_items.map do |queue|
      queue.rating
    end
    sum = nums.inject(:+)
    sum / nums.count
  end

  def self.highest_rated
    QueueItem.all.select do |queue|
      binding.pry
    end
  end

end


# ### `Movie`

# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
