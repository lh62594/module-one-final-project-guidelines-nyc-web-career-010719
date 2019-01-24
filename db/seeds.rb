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

# get_characters.each do |character|
#   Character.create(
#     url: character["url"],
#     name: character["name"],
#     gender: character["gender"],
#     culture: character["culture"],
#     born: character["born"],
#     died: character["died"],
#     titles: character["titles"],
#     aliases: character["name"],
#     father: character["father"],
#     mother: character["mother"],
#     spouse: character["spouse"],
#     allegiances: character["allegiances"],
#     books: character["books"],
#     tvSeries: character["tvSeries"]
#   )
# end

# get_houses.each do |house|
#   House.create(
#     url: house["url"],
#     name: house["name"],
#     region: house["region"],
#     coatOfArms: house["coatOfArms"],
#     words: house["words"],
#     titles: house["titles"],
#     seats: house["seats"],
#     currentLord: house["titles"],
#     heir: house["heir"],
#     overlord: house["overlord"],
#     founded: house["founded"],
#     founder: house["founder"],
#     diedOut: house["diedOut"],
#     ancestralWeapons: house["ancestralWeapons"],
#     cadetBranches: house["cadetBranches"],
#     swornMembers: house["swornMembers"]
#   )
# end


# def create_character_house
#   Character.all.each do |char|
#     if char.allegiances != "[]"
#       split_string_array(char.allegiances).each do |url|
#         CharacterHouse.create(character_id: char.id, house_id: House.find_by(url: url).id)
#       end
#     end
#   end
# end
#
# create_character_house

Category.create(name: "Name The House")
Category.create(name: "Who's Title")
Category.create(name: "Guess Something")

# binding.pry

#1
QuestionAnswer.create(question: "1) What is answer?",
                      answer: "answer",
                      value: 100,
                      category_id: Category.find(1).id
                      )
#2
QuestionAnswer.create(question: "2) What is answer?",
                      answer: "answer",
                      value: 200,
                      category_id: Category.find(1).id
                      )
#3
QuestionAnswer.create(question: "3) What is answer?",
                      answer: "answer",
                      value: 300,
                      category_id: Category.find(1).id
                      )
#4
QuestionAnswer.create(question: "4) What is answer?",
                      answer: "answer",
                      value: 100,
                      category_id: Category.find(2).id
                      )
#5
QuestionAnswer.create(question: "5) What is answer?",
                      answer: "answer",
                      value: 200,
                      category_id: Category.find(2).id
                      )
#6
QuestionAnswer.create(question: "6) What is answer?",
                      answer: "answer",
                      value: 300,
                      category_id: Category.find(2).id
                      )
#7
QuestionAnswer.create(question: "7) What is answer?",
                      answer: "answer",
                      value: 100,
                      category_id: Category.find(3).id
                      )
#8
QuestionAnswer.create(question: "8) What is answer?",
                      answer: "answer",
                      value: 200,
                      category_id: Category.find(3).id
                      )
#9
QuestionAnswer.create(question: "9) What is answer?",
                      answer: "answer",
                      value: 300,
                      category_id: Category.find(3).id
                      )



# binding.pry
#
# puts "bye"
