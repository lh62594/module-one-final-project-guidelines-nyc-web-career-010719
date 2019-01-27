require_relative "./config/environment.rb"



# prompt.ask("Please enter name", default: ENV['USER'])

#
# color_from_user = prompt.select("Choose color?", %w(Blue Red Green))
#
# if color_from_user == "Blue"
#   puts "You chose the color blue"
# elsif color_from_user == "Red"
#   puts "You chose the color red"
# elsif color_from_user == "Green"
#   puts "You chose GREEN"
# end
def main_menu
  puts "                   ┌┬┐┌─┐┬┌┐┌  ┌┬┐┌─┐┌┐┌┬ ┬"
  puts "                   │││├─┤││││  │││├┤ ││││ │"
  puts "                   ┴ ┴┴ ┴┴┘└┘  ┴ ┴└─┘┘└┘└─┘"
  puts " "
  puts "              Please select an option from below"
  puts " "
end

def main_menu_select
  main_menu_1
  prompt = TTY::Prompt.new

  main_menu_choices = [
    "                   [1] G.O.T. Wiki",
    "                   [2] G.O.T. Game",
    "                   [3] About",
    "                   [4] Exit G.O.T."
  ]
  prompt.select(" ", main_menu_choices)
  puts " "
  puts " "
end



# def new_wiki_or_game?
#
#
#   if main_menu_from_user == main_menu_1
#     wiki_main_menu_select
#   elsif main_menu_from_user == main_menu_2
#     game_menu_select
#   elsif main_menu_from_user == main_menu_3
#     puts give_about_details
#   elsif main_menu_from_user == main_menu_3
#     exit_app
#   end
#
# end


user_choice = main_menu_select

puts user_choice
