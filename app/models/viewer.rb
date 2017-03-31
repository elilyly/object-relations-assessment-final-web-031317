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
