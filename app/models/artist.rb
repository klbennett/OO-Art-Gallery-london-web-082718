
class Artist

attr_reader :name, :artist, :years_active

@@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self

  end

  def self.all
    # Get a list of all artists
    @@all
  end

  def paintings
    # Get a list of all the paintings by a specific artist
    Painting.all.select {|work| work.artist == self}
  end

  def galleries
    # find out if a painting belongs to this instance of artist
    #find out which gallery painting is in
    # Get a list of all the galleries that a specific artist has paintings in
  paintings.map {|painting| painting.gallery}
  end

  def self.avg_yrs_experience
    # Find the average years of experience of all artists
    # iterate over artists array, collect yrs exp
    total = 0
    self.all.each do |artist|
      total += artist.years_active
    end
    total /= self.all.length
  end

  def cities
# Get a list of all cities that contain galleries that a specific artist has paintings in
  galleries.map {|gallery| gallery.city}

  end
end
