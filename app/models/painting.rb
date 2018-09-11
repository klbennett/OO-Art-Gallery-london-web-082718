class Painting

# each painting belongs to an artist
# each painting belongs to an gallery
# each painting belongs to one city through its gallery

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
   # Get a list of all paintings
    @@all
  end


  def self.styles
  # Get a list of all painting styles (a style should not appear more than once in the list)
    self.all.map {|work| work.style}.uniq
  end

  def paintings
  # instance method
  Paintings.all.map {|painting| painting == self}
  end

end
