require_relative '../config/environment'

# Character.destroy_all
# House.destroy_all
# CharacterHouse.destroy_all
#
# c1 = Character.create(name: "c1")
# c2 = Character.create(name: "c2")
#
# h1 = House.create(name: "h1")
# h2 = House.create(name: "h2")
#
# ch1 = CharacterHouse.create(name: "ch1", character: c1, house: h1)
# ch2 = CharacterHouse.create(name: "ch2", character: c2, house: h1)

get_characters.each do |character|
  Character.create(
    url: character["url"],
    name: character["name"],
    gender: character["gender"],
    culture: character["culture"],
    born: character["born"],
    died: character["died"],
    titles: character["titles"],
    aliases: character["name"],
    father: character["father"],
    mother: character["mother"],
    spouse: character["spouse"],
    allegiances: character["allegiances"],
    books: character["books"],
    tvSeries: character["tvSeries"]
  )
end


# binding.pry
#
# puts "bye"
