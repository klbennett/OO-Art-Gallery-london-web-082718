class Gallery

attr_reader :name, :city, :artist, :painting

@@all = []

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end


def self.all
  # Get a list of all galleries
  @@all
end

def paintings
  # Get a list of paintings at gallery
Painting.all.select {|painting| painting.gallery == self}
end

def artists_at_gallery
  # Get a list of artists that have paintings at a specific gallery
  # get names of artists, linked to gallery thru paintings
  gallery_artists = []
  paintings.each do |painting|
 gallery_artists << painting.artist.name
    end
  gallery_artists
  end

  def total_yrs_experience
# Get the combined years of experience of all artists at a specific gallery
    total = 0
    paintings.each do |painting|
      if painting.gallery == self
      total += painting.artist.years_active
    end
  end
  total
end

def self.cities_with_galleries
# Get a list of all cities that have a gallery. A city should not appear more than once in the list.
self.all.map {|gallery| gallery.city}.uniq

end
end
