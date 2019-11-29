require_relative '../config/environment.rb'

amelie = Artist.new("Amelie", 6)
hazel = Artist.new("Hazel", 4)
mama = Artist.new("Mama", 42)

shocker = Gallery.new("Shocker", "Denver")
freezer = Gallery.new("Freezer", "Anchorage")
shindig = Gallery.new("Shindig Joint", "Boulder")

crayola = Painting.new("Crayola", 325.00, amelie, shindig)
ecstacy = Painting.new("Ecstacy", 6709.00, hazel, shindig)
sarc = Painting.new("Sarcophaguses", 980986.00, hazel, freezer)




binding.pry

puts "Bob Ross rules."
