class Jeopardy
  attr_reader :score, :board, :board_values, :turn_count

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

    @turn_count = 1
  end


  def display_board(board_values)
    puts
    puts "-----------------------------------------------------"
    puts " #{Category.find(1).name} |  #{Category.find(2).name}  |  #{Category.find(3).name} "
    puts "-----------------------------------------------------"
    puts " "
    puts "       #{board_values[0]}      |        #{board_values[3]}        |      #{board_values[6]}     "
    puts " "
    puts "-----------------------------------------------------"
    puts " "
    puts "       #{board_values[1]}      |        #{board_values[4]}        |      #{board_values[7]}     "
    puts " "
    puts "-----------------------------------------------------"
    puts " "
    puts "       #{board_values[2]}      |        #{board_values[5]}        |      #{board_values[8]}     "
    puts " "
    puts "-----------------------------------------------------"
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

  def reset_score
    @score = 0
  end

  def cap_all_words(string)
   string.split.map(&:capitalize).join(' ')
  end

  def end_game
    wiki_or_game?
  end

  def ask_value
    puts
    puts "   Please enter a value:"
    puts " "
      value = gets.chomp
      if value == "exit" || value == "Exit"
        end_game
        # binding.pry
      elsif QuestionAnswer.find_by(value: value)
        value
      else
        ask_value
      end
  end

  def ask_category
    puts " "
    puts "   Please enter a category:"
    puts " "
    category_input = cap_all_words(gets.chomp)
    if category_input == "Exit"
      end_game
    elsif Category.find_by(name: category_input)
      Category.find_by(name: category_input)
    else
      ask_category
    end
  end

  def ask_answer
    answer = cap_all_words(gets.chomp)
    if answer == "Exit"
      end_game
    else
      answer
    end
  end

  def play_game
    if game_over?
      puts "Game is over, thank you, your total score is: #{score}!"
      reset_score
      end_game
    else
      # binding.pry
      category = ask_category
      return if !category
      # binding.pry
      category_name = category.name
      category_id = category.id
      value = ask_value
      return if !value
      # binding.pry
      question_inst = QuestionAnswer.find_by(category_id: category_id, value: value)
      question_id = question_inst.id
      question = question_inst.question
      # binding.pry
      correct_answer = cap_all_words(question_inst.answer)
      if board_values[question_id-1] == "XXX"
        puts
        puts "Sorry, this question has been asked, please try again"
        display_board(board_values)
      else
        change_board(question_id, board_values)
        puts
        puts "#{question}"
        guessed_answer = ask_answer
        return if !guessed_answer
        if guessed_answer == correct_answer
          @score += value.to_i
          puts " "
          puts "  |-------------------------------------------------|"
          puts " "
          puts "      That's correct!, you've won #{value} points!  "
          puts " "
          puts "      Your current score is: #{@score}!"
          puts " "
          puts "  |-------------------------------------------------|"
          puts " "
          display_board(board_values)
        else
          puts " "
          puts " "
          puts "   *****-----            Sorry!            -----*****"
          puts "   *****-----        That answer is        -----*****"
          puts "   *****-----          INCORRECT           -----*****"
          puts " "
          puts "  |-------------------------------------------------|"
          puts "      Your score is: #{@score} !    "
          puts "  |-------------------------------------------------|"
          puts " "
          display_board(board_values)
        end
      end
    play_game
    end
  end


end #end of Jeopardy class
