# this is where we have all the stylistic menus
# print out images

def welcome
  puts " "
  puts " "
  puts "                      W E L C O M E    T O"
  puts " "
  puts "                             - - - "
  puts " "
  puts "                                                         "
  puts "                          ┌─┐┌─┐┌┬┐┌─┐                   "
  puts "                          │ ┬├─┤│││├┤                    "
  puts "                          └─┘┴ ┴┴ ┴└─┘                   "
  puts "                             ┌─┐┌─┐                      "
  puts "                             │ │├┤                       "
  puts "                             └─┘└                        "
  puts "                ┌─┬─┐┬  ┬┬──┐┌──┐┌─┐ ┌┌──┐┌──┐           "
  puts "                  │  ├──┤├─┬┘│  ││ │ │├─┤ └──┐           "
  puts "                  ┴  ┴  ┴┴ └─└──┘┘ └─┘└──┘└──┘           "
  puts " "
  puts " "
  puts "                             - - - "
  puts " "
end

def main_menu
  puts " "
  puts "                   ┌┬┐┌─┐┬┌┐┌  ┌┬┐┌─┐┌┐┌┬ ┬"
  puts "                   │││├─┤││││  │││├┤ ││││ │"
  puts "                   ┴ ┴┴ ┴┴┘└┘  ┴ ┴└─┘┘└┘└─┘"
  puts " "
  puts "              Please select an option from below:"
  puts " "
end

def give_about_details
  puts "   ----------------------------------------------------"
  puts "                     About G.O.T. Wiki"
  puts "   ----------------------------------------------------"
  puts "    Welcome to the Game of Thrones Wiki, where you"
  puts "    can find information on Game of Thrones Characters"
  puts "    and Houses. Start a search by selecting [1] G.O.T."
  puts "    Wiki and go to either the character or house menu."
  puts "    "
  puts "   "
  puts "   ----------------------------------------------------"
  puts "                     About G.O.T. Game"
  puts "   ----------------------------------------------------"
  puts "    Select [2] from the Main Menu to play Game of"
  puts "    Thrones Jeopardy! Play to test your knowledge "
  puts "    about the Game of Thrones universe. Complete the"
  puts "    Jeopardy board to finish the game!"
  puts "    "
  puts "   "
  puts "   ----------------------------------------------------"
  puts "    Created 2019"
  puts "    Jordan Ginor & Linya Hu"
  puts "    Flatiron School"
  puts "   ----------------------------------------------------"
  puts "   "
  puts " "
  puts " "
  sleep (5)
  puts "   Press [enter] to return"
  puts " "
  gets.chomp
  wiki_or_game?
end

def wiki_menu
  puts " "
  puts "                    ┬ ┬┬┬┌─┬  ┌┬┐┌─┐┌┐┌┬ ┬"
  puts "                    ││││├┴┐│  │││├┤ ││││ │"
  puts "                    └┴┘┴┴ ┴┴  ┴ ┴└─┘┘└┘└─┘"
  puts " "
  puts "              Please select an option from below:"
  puts " "
end

def invalid_input
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "                         Invalid Input"
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  sleep(1)
end

def invalid_character
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "                       Invalid Character           "
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  sleep(1)
end

def invalid_house
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "                         Invalid House           "
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  sleep(1)
end

def start_and_end_of_output
  puts " "
  puts "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  puts " "
end


def game_menu
  puts " "
  puts "                             - - - "
  puts "                                                            "
  puts "
                 ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐
                 │││├┤ │  │  │ ││││├┤    │ │ │
                 └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘
                    ┬┌─┐┌─┐┌─┐┌─┐┬─┐┌┬┐┬ ┬
                    │├┤ │ │├─┘├─┤├┬┘ ││└┬┘
                   └┘└─┘└─┘┴  ┴ ┴┴└──┴┘ ┴   "
  puts "                                                          "
  puts "                             - - - "
  puts " "
  sleep(1)
  puts "                       - Instructions -"
  puts " "
  puts "        Select the category, then select the value of "
  puts "        the question. You have 10 turns to score as many"
  puts "        points as possible! You may enter 'exit' at any"
  puts "        time to exit the game. "
  puts " "
  puts " "
  sleep(3)
  puts "        Please press [enter] to continue"
  puts " "
  gets.chomp
end

def jeopardy_board
  puts " "
  puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "    -----------------------------------------------------"
  puts "            ╦┌─┐┌─┐┌─┐┌─┐┬─┐┌┬┐┬ ┬  ┌┐ ┌─┐┌─┐┬─┐┌┬┐"
  puts "            ║├┤ │ │├─┘├─┤├┬┘ ││└┬┘  ├┴┐│ │├─┤├┬┘ ││"
  puts "           ╚╝└─┘└─┘┴  ┴ ┴┴└──┴┘ ┴   └─┘└─┘┴ ┴┴└──┴┘"
  puts "    -----------------------------------------------------"
  puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
end

def display_board
  puts " "
  puts "      Name The House    Name The Person     Misc Facts     "
  puts "   |-----------------------------------------------------|"
  puts "   |       100      |         100       |      100       |"
  puts "   |-----------------------------------------------------|"
  puts "   |       200      |         200       |      200       |"
  puts "   |-----------------------------------------------------|"
  puts "   |       300      |         300       |      300       |"
  puts "   |-----------------------------------------------------|"
  puts " "
end

def exit_app
  puts " "
  puts " "
  puts " "
  puts "                   ┌─┐┌─┐┌─┐┌┬┐┌┐ ┬ ┬┌─┐┬             "
  puts "                   │ ┬│ ││ │ ││├┴┐└┬┘├┤ │             "
  puts "                   └─┘└─┘└─┘─┴┘└─┘ ┴ └─┘o             "
  puts " "
  puts " "
  sleep(1.5)
end
