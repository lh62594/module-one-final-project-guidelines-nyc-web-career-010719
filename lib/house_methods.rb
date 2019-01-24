# require_relative '../config/environment'
# G.O.T. WIKI HOUSE METHODS

# ------------ HELPER METHODS ------------ #

def return_menu?
  puts " "
  puts "|-----------------------------------|"
  puts "|  Press:                           |"
  puts "|   [1] to search again             |"
  puts "|   [2] return to previous menu     |"
  puts "|-----------------------------------|"
  puts " "
end

def choose_from_houses_character_search
  return_menu?
  input = gets.chomp
  if input == "1"
    enter_house_name
  elsif input == "2"
    house_menu_option
  else
    puts "- - - - - - - - - - - - - - - - - - -"
    puts "           Invalid Input"
    puts "- - - - - - - - - - - - - - - - - - -"
    choose_from_houses_character_search
  end
end

# ------------ FUNCTIONAL METHODS ------------ #

def enter_house_name
# gets user input
# then calls on show_me_characters method
  puts " "
  puts "Please enter the house name"
  puts "(without the word house):"
  house_name = gets.chomp
  show_me_characters(house_name)
end

def show_me_characters(house_name)
  found_houses = House.all.select do |house|
    house.name.include?(house_name.capitalize)
  end

  array = found_houses.map do |house|
    house.characters.map do |character|
      character.name
    end
  end.flatten.uniq

  i = 1
  puts " "
  puts "- - - - - - - - - - - - - - - - - - -"
  puts " "
  puts "     Characters in House #{house_name.capitalize}:"
  puts " "
  array.map do |element|
    puts "  #{i}. #{element}"
    i += 1
  end
  puts " "
  puts "- - - - - - - - - - - - - - - - - - -"

  choose_from_houses_character_search
end

def top_10_largest_houses
  puts "- - - - - - - - - - - - - - - - - - -"
  puts " "
  puts "How many houses do you want to see?"
  puts "Input a number between 1 and 50:"
  puts " "
  input = gets.chomp.to_i

  ordered_houses = House.all.sort_by do |house|
    split_string_array(house.swornMembers).count
  end.reverse

  i = 1

  puts " "
  puts "- - - - - - - - - - - - - - - - - - -"
  puts " "
  puts "     Top #{input} Largest Houses:"
  puts " "
  ordered_houses[0..input-1].map do |house|
    puts "  #{i}. #{house.name} - #{split_string_array(house.swornMembers).count} members"
    i += 1
  end
  puts " "
  puts "- - - - - - - - - - - - - - - - - - -"

end

# binding.pry
# puts "bye"
