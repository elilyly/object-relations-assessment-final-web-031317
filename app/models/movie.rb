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
    end
  end
end
