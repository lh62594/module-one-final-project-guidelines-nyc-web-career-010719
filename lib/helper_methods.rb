#this file contains all the helper methods

# ~~~~~~~~~~~~~~~~~~~ GLOBAL HELPERS ~~~~~~~~~~~~~~~~~~~~ #

def cap_all_words(string)
  string.split.map(&:capitalize).join(' ')
end

# ~~~~~~~~~~~~~~~~~~~ CHARACTER HELPERS ~~~~~~~~~~~~~~~~~~~~ #

def enter_character_name
  prompt = TTY::Prompt.new
  prompt.ask("       Please enter a character name:")
end

def get_allegiances(character)
  split_string_array(character.allegiances).map do |url|
    House.find_by(url: url).name
  end
end

def selected_culture
  input = user_select_culture #in menu_option.rb
  if input.include?("1")
    "Westeros"
  elsif input.include?("2")
    "Ironborn"
  elsif input.include?("3")
    "Valyrian"
  elsif input.include?("4")
    "Dornish"
  elsif input.include?("5")
    "Braavosi"
  elsif input.include?("6")
    "Dothraki"
  elsif input.include?("7")
    "Northmen"
  elsif input.include?("8")
    "Rivermen"
  elsif input.include?("9")
    "Stormlands"
  elsif input.include?("10")
    "Reach"
  end
end

# ~~~~~~~~~~~~~~~~~~~ HOUSE HELPERS ~~~~~~~~~~~~~~~~~~~~ #

def enter_house_name
  puts " "
  prompt = TTY::Prompt.new
  prompt.ask("     Please enter the house name (without House):")
end

def selected_region
  input = user_select_region    #in menu_option.rb
  if input.include?("1")
    "The Westerlands"
  elsif input.include?("2")
    "The Vale"
  elsif input.include?("3")
    "The Stormlands"
  elsif input.include?("4")
    "The Riverlands"
  elsif input.include?("5")
    "The Reach"
  elsif input.include?("6")
    "The North"
  elsif input.include?("7")
    "The Neck"
  elsif input.include?("8")
    "Iron Islands"
  elsif input.include?("9")
    "Dorne"
  elsif input.include?("10")
    "Beyond the Wall"
  end
end

def clarify_which_house(house_array)
#this method is called if there are multipl houses
#that match a house input
  puts " "
  puts "     There are multiple houses that match your input:"
  puts " "
    i = 1
    house_array.map{|h| puts "               [#{i}] #{h.name}"
      i += 1}
  puts " "
  prompt = TTY::Prompt.new
  input = prompt.ask("     Please enter the number of the house you meant:").to_i
  #the above will return a list of options
  #that user can select from

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
  puts "              ~ #{house.name} ~"
  puts " "
  puts "             Name: #{house.name}"
  puts "             Region: #{house.region}"
  if house.overlord == ""
    puts "             Ruling House: unknown"
  else
    puts "             Ruling House: #{House.find_by(url: house.overlord).name}"
  end
  puts "             Coat of Arms: #{house.coatOfArms}"
  puts "             Motto: #{house.words}"
  puts "             Founded: #{house.founded}"
  puts "             Ancestral Weapons: #{house.ancestralWeapons[2..house.ancestralWeapons.length-3]}"
  puts "             Number of Sworn Members: #{split_string_array(house.swornMembers).count}"
  start_and_end_of_output
end #end of house_info_output method

def output_characters(house) #gets house object
  start_and_end_of_output
  puts "         Characters in House #{house.name}:"
  puts " "
  members = split_string_array(house.swornMembers)
  i = 1
  members.map do |url|
    if Character.find_by(url: url) != nil
      puts "                  #{i}. #{Character.find_by(url: url).name}"
      i += 1
    end
  end
  start_and_end_of_output
end
