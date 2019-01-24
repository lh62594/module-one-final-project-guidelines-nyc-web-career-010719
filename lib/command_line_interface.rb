
######################################################
#                      WELCOME                       #
######################################################

# ~~~~~~~~~~~~~~~~~~~ MAIN MENU ~~~~~~~~~~~~~~~~~~~~ #

def hit_any_key_to_continue
  puts "   Hit any key to continue"
  gets.chomp
end

def wiki_or_game?
  main_menu
  input = gets.chomp
  if input == "1"
    wiki_main_menu_select
  elsif input == "2"
    puts "****** goes to GOT Game menu ******"
  elsif input == "3"
    puts "gives description about wiki and game"
  elsif input == "4"
    exit_app
  else
    invalid_input
    wiki_or_game?
  end
end

######################################################
##################### G.O.T. WIKI ####################
######################################################

# ~~~~~~~~~~~~~~~~~~~ WIKI MENU ~~~~~~~~~~~~~~~~~~~~ #
def wiki_main_menu_select
  wiki_main_menu
  input = gets.chomp
  character_or_house?(input)
end

def character_or_house?(input)
  if input == "1"
    character_menu_select
  elsif input == "2"
    house_menu_select
  elsif input == "3"
    wiki_main_menu_select
  elsif input == "4"
    exit_app
  else
    invalid_input
    new_input = wiki_main_menu_select
    character_or_house?(new_input)
  end
end


# ~~~~~~~~~~~~~~~ HOUSE MENU INPUTS ~~~~~~~~~~~~~~~ #
def house_menu_select
# main menu of house functions
# user can select what they want to do via house
  house_menu
  input = gets.chomp
  if input == "1"
    show_me_characters
  elsif input == "2"
    top_largest_houses
  elsif input == "3"
    find_all_houses_of_region
  elsif input == "4"
    find_info_of_house
  elsif input == "5"
    wiki_main_menu_select
  elsif input == "6"
    wiki_or_game?
  else
    invalid_input
    house_menu_select
  end
end

def choose_from_houses_character_search
# user chooses after they have searched for
# all the characters in a house
  return_menu?
  input = gets.chomp
  if input == "1"
    show_me_characters
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_houses_character_search
  end
end

def choose_from_top_largest_houses
  return_menu?
  input = gets.chomp
  if input == "1"
    top_largest_houses
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_top_largest_houses
  end
end

def choose_from_find_all_houses_of_region
#user has just finished searching houses in region
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    find_all_houses_of_region
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_find_all_houses_of_region
  end
end

def choose_from_find_info_of_house
#user has just finished searching info of house
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    find_info_of_house
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_find_info_of_house
  end
end

# ~~~~~~~~~~~~~~~ CHAR MENU INPUTS ~~~~~~~~~~~~~~~ #

def character_menu_select
# main menu of character functions
# user can select what they want to do via char
  character_menu
  input = gets.chomp
  if input == "1"
    show_info_of_character
  elsif input =="2"
    show_me_houses
  elsif input == "3"
    find_characters_by_culture
  elsif input == "4"
    wiki_main_menu_select
  elsif input == "5"
    wiki_or_game?
  else
    invalid_input
    character_menu_select
  end
end

def choose_menu_from_character_info_search
#user has just finished searching character info
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    show_info_of_character
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_menu_from_character_info_search
  end
end

def choose_from_characters_house_search
#user has just finished searching character allegience
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    show_me_houses
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_from_characters_house_search
  end
end

def choose_from_find_characters_by_culture
  return_menu?
  input = gets.chomp
  if input == "1"
    find_characters_by_culture
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_from_find_characters_by_culture
  end
end


#####################################################
################### JEOPARDY GAME ###################
#####################################################

class Jeopardy
  attr_reader :score, :board

  def initialize
    @score = 0
  end

  def display_board(board_values)
    puts
    puts
    puts " #{Category.find(1).name} |     #{Category.find(2).name}    |  #{Category.find(3).name} "
    puts "---------------------------------------------------------"
    puts "       #{board_values[0]}      |        #{board_values[3]}         |      #{board_values[6]}     "
    puts "---------------------------------------------------------"
    puts "       #{board_values[1]}      |        #{board_values[4]}         |      #{board_values[7]}     "
    puts "---------------------------------------------------------"
    puts "       #{board_values[2]}      |        #{board_values[5]}         |      #{board_values[8]}     "
    puts
    puts
  end

  def change_board(question_id, board_values)
    board_values[question_id-1] = "XXX"
    board_values
  end

  def game_over?
     if Board_values[0] == "XXX" && Board_values[1] == "XXX" && Board_values[2] == "XXX" && Board_values[3] == "XXX" && Board_values[4] == "XXX" && Board_values[5] == "XXX" && Board_values[6] == "XXX" && Board_values[7] == "XXX" && Board_values[8] == "XXX"
       true
     else
       false
     end
  end

  def game_start?
     if Board_values[0] != "XXX" && Board_values[1] != "XXX" && Board_values[2] != "XXX" && Board_values[3] != "XXX" && Board_values[4] != "XXX" && Board_values[5] != "XXX" && Board_values[6] != "XXX" && Board_values[7] != "XXX" && Board_values[8] != "XXX"
       true
     else
       false
     end
  end

  def cap_all_words(string)
   string.split.map(&:capitalize).join(' ')
  end

  def ask_category
    puts
    puts "Please enter a category:"
    category = gets.chomp
    category = cap_all_words(category)
    if Category.find_by(name: category)
      category
    else
      ask_category
    end
  end


  def find_category_id(category)
    Category.find_by(name: category).id
  end

  def ask_value
    puts
    puts "Please enter a value:"
      value = gets.chomp
      if QuestionAnswer.find_by(value: value)
        value
      else
        ask_value
      end
  end

  def ask_answer
    gets.chomp.capitalize
  end

  def reset_score
    @score = 0
  end

  def play_game
    if game_over?
      puts "Game is over, thank you, your score is #{score}!"
      reset_score
    else
      category_name = ask_category
      category_id = find_category_id(category_name)
      value = ask_value
      question_id = QuestionAnswer.find_by(category_id: category_id, value: value).id
      question = QuestionAnswer.find(question_id).question
      puts
      puts "#{question}"
        if Board_values[question_id-1] == "XXX"
          puts
          puts "Sorry, this question has been asked, please try again"
          display_board(Board_values)
          play_game
        else
          change_board(question_id, Board_values)
          correct_answer = QuestionAnswer.find_by(category_id: category_id, value: value).answer.capitalize
          answer  = ask_answer
            if answer == correct_answer
              @score += value.to_i
              puts
              puts "You're right!, you've won #{value} points!"
              puts "Your score is now #{@score}!"
              display_board(Board_values)
              play_game
            else
              puts
              puts "Sorry, incorrect!"
              puts "Your score is now #{@score}!"
              display_board(Board_values)
              play_game
            end
        end
    end
  end

end #end of Jeopardy class
