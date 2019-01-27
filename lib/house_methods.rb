# require_relative '../config/environment'
# G.O.T. WIKI HOUSE METHODS

# ~~~~~~~~~~~~~~~~~~~ OUTPUT HELPERS ~~~~~~~~~~~~~~~~~~~~ #

#[1] Find all characters in a house
def show_me_characters
# user puts in a house name
# method shows all the characters associated with house name
  house_name = enter_house_name
  house_array = House.all.select do |house|
    house.name.include?(house_name.capitalize)
  end

  if house_array == []
    invalid_input
    show_me_characters
  else
    if house_array.count > 1
      house = clarify_which_house(house_array)
      output_characters(house)
    else
      house = house_array[0]
      output_characters(house)
    end

    input = see_more_char_details?
    if input.include?("Y")
      show_info_of_character
    elsif input.include?("N")

      input = return_menu?
      if input.include?("1")
        show_me_characters
      elsif input.include?("2")
        character_menu_select
      elsif input.include?("3")
        house_menu_select
      end

    end

  end
end #end of show_me_characters

#[2] Find largest houses
def top_largest_houses
# user selects how many houses they want to see
# method outputs top x number of houses (by size)
  start_and_end_of_output
  prompt = TTY::Prompt.new
  puts "          How many houses do you want to see?"
  puts " "
  input = prompt.ask("          Input a number between 1 and 50:").to_i

  ordered_houses = House.all.sort_by do |house|
    split_string_array(house.swornMembers).count
  end.reverse

  start_and_end_of_output
    puts "            Top #{input} Largest Houses:"
    puts " "
    i = 1
    ordered_houses[0..input-1].map do |house|
      puts "        #{i}. #{house.name} - #{split_string_array(house.swornMembers).count} members"
      i += 1
    end
  start_and_end_of_output

  input = see_more_house_details?
  if input.include?("Y")
    find_info_of_house
  elsif input.include?("N")

    input = return_menu?
    if input.include?("1")
      top_largest_houses
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

  end
end #end of top_10_largest_houses method

#[2] Find all houses of a region
def find_all_houses_of_region
# user selects which region from a menu of options
# method outputs all the houses associated
  region = selected_region
  houses = House.all.select{|house| house.region == region}
  i = 1
  start_and_end_of_output
  puts "          Houses in #{region}:"
  puts " "
    houses.map{|h| puts "              #{i}. #{h.name}"
    i += 1}
  start_and_end_of_output

  input = see_more_house_details?
  if input.include?("Y")
    find_info_of_house
  elsif input.include?("N")

    input = return_menu?
    if input.include?("1")
      find_all_houses_of_region
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

  end
end #end of find_all_houses_of_region method

#[4] Find info of a house
def find_info_of_house
  house_name = enter_house_name #gets house name

  house_array = House.all.select do |house|
    house.name.include?(house_name.capitalize)
  end

  if house_array == [] #if house name doesn't exist
    invalid_house #puts "invalid house"
    find_info_of_house #returns to top of this method
  else
    if house_array.count > 1 #if there is more than one house
      house = clarify_which_house(house_array) #will ask to clarify the house
      house_info_output(house)
    else
      house = house_array[0] #this is an object
      house_info_output(house)
    end

    input = return_menu?
    if input.include?("1")
      find_info_of_house
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

  end
end
