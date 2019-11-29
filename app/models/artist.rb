class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do | painting |
      painting.artist == self
    end
  end

  def galleries
    galleries = paintings.map do | painting |
      painting.gallery
    end.uniq
  end

  def cities
    galleries.map do | gallery |
      gallery.city
    end.uniq
  end

  def self.total_experience
    all.reduce(0) do | memo, artist |
      memo + artist.years_experience
    end
  end

  def self.most_prolific
    max_prolificness = 0
    max_index = 0

    all.each_with_index do | artist, index |
      prolificness = artist.paintings.length.to_f / artist.years_experience.to_f

      if prolificness > max_prolificness
         max_prolificness = prolificness
         max_index = index
      end
    end

    all[max_index]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end



