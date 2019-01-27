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

# Category.create(name: "Name The House")
# Category.create(name: "Who's Title")
# Category.create(name: "Guess Something")
#
# # binding.pry
#
# #1
# QuestionAnswer.create(question: "1) What is answer?",
#                       answer: "answer",
#                       value: 100,
#                       category_id: Category.find(1).id
#                       )
# #2
# QuestionAnswer.create(question: "2) What is answer?",
#                       answer: "answer",
#                       value: 200,
#                       category_id: Category.find(1).id
#                       )
# #3
# QuestionAnswer.create(question: "3) What is answer?",
#                       answer: "answer",
#                       value: 300,
#                       category_id: Category.find(1).id
#                       )
# #4
# QuestionAnswer.create(question: "4) What is answer?",
#                       answer: "answer",
#                       value: 100,
#                       category_id: Category.find(2).id
#                       )
# #5
# QuestionAnswer.create(question: "5) What is answer?",
#                       answer: "answer",
#                       value: 200,
#                       category_id: Category.find(2).id
#                       )
# #6
# QuestionAnswer.create(question: "6) What is answer?",
#                       answer: "answer",
#                       value: 300,
#                       category_id: Category.find(2).id
#                       )
# #7
# QuestionAnswer.create(question: "7) What is answer?",
#                       answer: "answer",
#                       value: 100,
#                       category_id: Category.find(3).id
#                       )
# #8
# QuestionAnswer.create(question: "8) What is answer?",
#                       answer: "answer",
#                       value: 200,
#                       category_id: Category.find(3).id
#                       )
# #9
# QuestionAnswer.create(question: "9) What is answer?",
#                       answer: "answer",
#                       value: 300,
#                       category_id: Category.find(3).id
#                       )


#category 1: name the house
QuestionAnswer.create(
    question: "   What noble house is Catelyn Stark from?",
    answer: "House Tully",
    value: 100,
    category_id: 1)
QuestionAnswer.create(
    question: "   What house has a direwolf on their sigil?",
    answer: "House Stark",
    value: 100,
    category_id: 1)
QuestionAnswer.create(
    question: "   What house still has ties to dragons?",
    answer: "House Targaryen",
    value: 100,
    category_id: 1)
QuestionAnswer.create(
    question: "   What house has a lion on their sigil?",
    answer: "House Lannister",
    value: 100,
    category_id: 1)
QuestionAnswer.create(
    question: "   Who is the ruling house of Dorne?",
    answer: "House Martell",
    value: 200,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house has a flayed man on theirs sigil?",
    answer: "House Bolton",
    value: 200,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house has a seat in Casterly Rock?",
    answer: "House Lannister",
    value: 200,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house ruled The Reach?",
    answer: "House Tyrell",
    value: 200,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house is the only house that elects its ruler?",
    answer: "House Greyjoy",
    value: 300,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house makes their home in the Eyrie?",
    answer: "House Arryn",
    value: 300,
    category_id: 1)
QuestionAnswer.create(
    question: " Which house rules the riverlands?",
    answer: "House Tully",
    value: 300,
    category_id: 1)
QuestionAnswer.create(
    question: "   Which house rules Bear Island?",
    answer: "House Mormont",
    value: 300,
    category_id: 1)


#category 2: name the person
QuestionAnswer.create(
    question: "   His direwolf is named Ghost",
    answer: "Jon Snow",
    value: 100,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who is king of Westeros when the the series begins?",
    answer: "Robert Baratheon",
    value: 100,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who was the wildling lover of John Snow?",
    answer: "Ygritte",
    value: 100,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who gave Arya Stark her sword 'Needle'?",
    answer: "Jon Snow",
    value: 100,
    category_id: 2)
QuestionAnswer.create(
    question: "   Can you name the squire in service to Brienne of Tarth?",
    answer: "Pod",
    value: 200,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who is known as the Mad King?",
    answer: "Aerys Targaryen",
    value: 200,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who married King Tommen Baratheon?",
    answer: "Margaery Tyrell",
    value: 200,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who was determined to become a Faceless Men?",
    answer: "Arya Stark",
    value: 200,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who is King Robert Baratheon referring to when he says 'In my dreams, I kill him every night.'",
    answer: "Rhaegar Targaryen",
    value: 300,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who admitted responsibility for Joffrey's death after being forced to take poison?",
    answer: "Olenna Tyrell",
    value: 300,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who is the Master of Whisperers and sometimes called the Spider?",
    answer: "Lord Varys",
    value: 300,
    category_id: 2)
QuestionAnswer.create(
    question: "   Who's nickname is Littlefinger?",
    answer: "Petyr Baelish",
    value: 300,
    category_id: 2)

#category 3: misc facts
QuestionAnswer.create(
    question: "   What is the name of Arya's direwolf?",
    answer: "Nymeria",
    value: 100,
    category_id: 3)
QuestionAnswer.create(
    question: "   Jamie Lannister has a golden....",
    answer: "Hand",
    value: 100,
    category_id: 3)
QuestionAnswer.create(
    question: "   What did Tyrion use when he killed his father?",
    answer: "Crossbow",
    value: 100,
    category_id: 3)
QuestionAnswer.create(
    question: "   What event was Catelyn and Robb stark murdered?",
    answer: "Red Wedding",
    value: 100,
    category_id: 3)
QuestionAnswer.create(
    question: "   Which name is given to the bastards of The Reach?",
    answer: "Flowers",
    value: 200,
    category_id: 3)
QuestionAnswer.create(
    question: "   How many Targaryens were alive at the start of Season 1?",
    answer: "3",
    value: 200,
    category_id: 3)
QuestionAnswer.create(
    question: "   Who was known as the 'King Beyond the Wall'?",
    answer: "Mance Rayder",
    value: 200,
    category_id: 3)
QuestionAnswer.create(
    question: "   What is Gregor Clegane's nickname?",
    answer: "The Mountain",
    value: 200,
    category_id: 3)
QuestionAnswer.create(
    question: "   What does 'Valar morghulis' mean?",
    answer: "All men must die",
    value: 300,
    category_id: 3)
QuestionAnswer.create(
    question: "   Where did King Tommen end up killing himself?",
    answer: "Red Keep",
    value: 300,
    category_id: 3)
QuestionAnswer.create(
    question: "   What is Davos Seaworth’s nickname?",
    answer: "Onion Knight",
    value: 300,
    category_id: 3)
QuestionAnswer.create(
    question: "   What is Oberyn Martell's nickname?",
    answer: "Red Viper",
    value: 300,
    category_id: 3)


# binding.pry
#
# puts "bye"
