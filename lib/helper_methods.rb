#this file contains all the helper methods


# ~~~~~~~~~~~~~~~~~~~ GLOBAL HELPERS ~~~~~~~~~~~~~~~~~~~~ #

def cap_all_words(string)
  string.split.map(&:capitalize).join(' ')
end



# ~~~~~~~~~~~~~~~~~~~ CHARACTER HELPERS ~~~~~~~~~~~~~~~~~~~~ #

def enter_character_name
  puts " "
  puts "Please enter a character name:"
  gets.chomp
end

def get_allegiances(character)
  split_string_array(character.allegiances).map do |url|
    House.find_by(url: url).name
  end
end

def character_info_from_url(url)

end



# ~~~~~~~~~~~~~~~~~~~ HOUSE HELPERS ~~~~~~~~~~~~~~~~~~~~ #
def enter_house_name
  puts " "
  puts "Please enter the house name (without the word house):"
  gets.chomp
end

def selected_region
  user_select_region
  input = gets.chomp
  if input == "1"
    "The Westerlands"
  elsif input == "2"
    "The Vale"
  elsif input == "3"
    "The Stormlands"
  elsif input == "4"
    "The Riverlands"
  elsif input == "5"
    "The Reach"
  elsif input == "6"
    "The North"
  elsif input == "7"
    "The Neck"
  elsif input == "8"
    "Iron Islands"
  elsif input == "9"
    "Dorne"
  elsif input == "10"
    "Beyond the Wall"
  else
    invalid_input
    selected_region
  end
end

def clarify_which_house(house_array)
#this method is called if there are multipl houses
#that match a house input
  puts " "
  puts "    There are multiple houses that match"
  puts "    your input:"
  puts " "
    i = 1
    house_array.map{|h| puts "       [#{i}] #{h.name}"
      i += 1}
  puts " "
  puts "    Please enter which house you meant"
  puts " "
  #the above will return a list of options
  #that user can select from
  input = gets.chomp.to_i #user will input an integer
  if input > house_array.count || input == 0
    invalid_input #if the user entered an invalid number
    clarify_which_house(house_array)
  else
    house_array[input-1]
  end
end #end of clarify_which_house method

def house_info_output(house)
#this method returns the info of a house
#input is a house object
  start_and_end_of_output
  puts "       ~ #{house.name} ~"
  puts " "
  puts "      Name: #{house.name}"
  puts "      Region: #{house.region}"
  if house.overlord == ""
    puts "      Ruling House: unknown"
  else
    puts "      Ruling House: #{House.find_by(url: house.overlord).name}"
  end
  puts "      Coat of Arms: #{house.coatOfArms}"
  puts "      Motto: #{house.words}"
  puts "      Founded: #{house.founded}"
  if house.founder == ""
    puts "      Founder:"
  else
    puts "      Founder: #{Character.find_by(url: house.founder).name}"
  end
  puts "      Ancestral Weapons: #{house.ancestralWeapons[2..house.ancestralWeapons.length-3]}"
  puts "      Number of Sworn Members: #{split_string_array(house.swornMembers).count}"
  start_and_end_of_output
end #end of house_info_output method


def see_more_house_details?
  puts "Would you like to see more details"
  puts "of a specific house?"
  puts " "
  puts "      [Y]            [N]"
  puts " "
  input = gets.chomp.capitalize
  if input == "Y"
    find_info_of_house
  elsif input == "N"
    puts ""
  else
    invalid_input
    see_more_house_details?
  end
end

def see_more_char_details?
  puts "Would you like to see more details"
  puts "of a specific character?"
  puts " "
  puts "      [Y]            [N]"
  puts " "
  input = gets.chomp.capitalize
  if input == "Y"
    show_info_of_character
  elsif input == "N"
    puts ""
  else
    invalid_input
    see_more_char_details?
  end
end
