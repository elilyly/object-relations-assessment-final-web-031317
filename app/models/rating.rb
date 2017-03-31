class Rating
  attr_accessor :score, :viewer, :movie
  ALL = []

  def initialize(score, viewer, movie)
    @score = score
    @viewer = viewer
    @movie = movie
    ALL << self
  end

  def self.all
    ALL
  end

  def viewer
    Viewer.select { |viewer| viewer == self }
  end

  def movie
    Movie.select { |movie| movie == self }
  end

end
