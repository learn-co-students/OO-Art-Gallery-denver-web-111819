require 'pry'

class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do | painting |
      painting.gallery == self
    end
  end

  def artists
    paintings.map do | painting |
      painting.artist
    end
  end

  def artist_names
    artists.map do | artist |
      artist.name
    end.uniq
  end

  def most_expensive_painting
    max_price = paintings.map do | painting |
      painting.price
    end.max

    paintings.find do | painting |
      painting.price == max_price
    end
  end
end
