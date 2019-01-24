class Jeopardy
  attr_reader :score, :board, :board_values

# ~~~~~~~~~~~~~~~~~~~ CLASS METHODS ~~~~~~~~~~~~~~~~~~~~ #
  def initialize
    @score = 0

    @board = [QuestionAnswer.find(1),
              QuestionAnswer.find(2),
              QuestionAnswer.find(3),
              QuestionAnswer.find(4),
              QuestionAnswer.find(5),
              QuestionAnswer.find(6),
              QuestionAnswer.find(7),
              QuestionAnswer.find(8),
              QuestionAnswer.find(9)
                ]

    @board_values = [QuestionAnswer.find(1).value,
                     QuestionAnswer.find(2).value,
                     QuestionAnswer.find(3).value,
                     QuestionAnswer.find(4).value,
                     QuestionAnswer.find(5).value,
                     QuestionAnswer.find(6).value,
                     QuestionAnswer.find(7).value,
                     QuestionAnswer.find(8).value,
                     QuestionAnswer.find(9).value]
  end


  def display_board(board_values)
    puts
    puts "---------------------------------------------------------"
    puts " #{Category.find(1).name} |     #{Category.find(2).name}    |  #{Category.find(3).name} "
    puts "---------------------------------------------------------"
    puts " "
    puts "       #{board_values[0]}      |        #{board_values[3]}         |      #{board_values[6]}     "
    puts " "
    puts "---------------------------------------------------------"
    puts " "
    puts "       #{board_values[1]}      |        #{board_values[4]}         |      #{board_values[7]}     "
    puts " "
    puts "---------------------------------------------------------"
    puts " "
    puts "       #{board_values[2]}      |        #{board_values[5]}         |      #{board_values[8]}     "
    puts " "
    puts "---------------------------------------------------------"
    puts
    puts
  end

  def change_board(question_id, board_values)
    board_values[question_id-1] = "XXX"
    board_values
  end

  def game_over?
     if board_values[0] == "XXX" && board_values[1] == "XXX" && board_values[2] == "XXX" && board_values[3] == "XXX" && board_values[4] == "XXX" && board_values[5] == "XXX" && board_values[6] == "XXX" && board_values[7] == "XXX" && board_values[8] == "XXX"
       true
     else
       false
     end
  end

  def game_start?
     if board_values[0] != "XXX" && board_values[1] != "XXX" && board_values[2] != "XXX" && board_values[3] != "XXX" && board_values[4] != "XXX" && board_values[5] != "XXX" && board_values[6] != "XXX" && board_values[7] != "XXX" && board_values[8] != "XXX"
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
    category = cap_all_words(gets.chomp)
    # category = cap_all_words(category)
    if category == "Exit"
      wiki_or_game?
    elsif Category.find_by(name: category)
      category
    else
      ask_category
    end
  end


  def find_category_id(category)
    Category.find_by(name: category).id
    # binding.pry
  end

  def ask_value
    puts
    puts "Please enter a value:"
      value = gets.chomp
      if value == "exit" || value == "Exit"
        wiki_or_game?
      elsif QuestionAnswer.find_by(value: value)
        value
      else
        ask_value
      end
  end

  def ask_answer
    cap_all_words(gets.chomp)
  end

  def reset_score
    @score = 0
  end

  def play_game
    if game_over?
      puts "Game is over, thank you, your score is #{score}!"
      reset_score
      wiki_or_game?
    else
      category_name = ask_category
      category_id = find_category_id(category_name)
      value = ask_value
      # if value == "exit" || value == "Exit"
      #   wiki_or_game?
      # else
      question_id = QuestionAnswer.find_by(category_id: category_id, value: value).id
      question = QuestionAnswer.find(question_id).question
      puts
      puts "#{question}"
        if board_values[question_id-1] == "XXX"
          puts
          puts "Sorry, this question has been asked, please try again"
          display_board(board_values)
          play_game
        else
          change_board(question_id, board_values)
          correct_answer = QuestionAnswer.find_by(category_id: category_id, value: value).answer.capitalize
          answer  = ask_answer
            if answer == "Exit"
              wiki_or_game?
            elsif correct_answer
              @score += value.to_i
              puts
              puts "You're right!, you've won #{value} points!"
              puts "Your score is now #{@score}!"
              display_board(board_values)
              play_game
            else
              puts
              puts "Sorry, incorrect!"
              puts "Your score is now #{@score}!"
              display_board(board_values)
              play_game
            end
        end
    end
  end

end #end of Jeopardy class
