class Viewer
  attr_accessor :first_name, :last_name

  ALL =[]
  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find { |customer| name == customer.full_name }
  end

  def create_rating(score, movie)
    Rating.new(score, movie, self)
  end

end


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


class Movie
  attr_accessor :title

  ALL = []
  def initialize(title)
    self.title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    self.all.find { |title| title == self }
  end

  def ratings
    Rating.all.select { |score| score == self }
  end

  def viewers
    ratings.viewer.map { |viewer| viewer == self }
  end

  def average_rating
    Rating.score.inject(0) do |score, n|
      #i didnt finish :(
    end
  end
end
