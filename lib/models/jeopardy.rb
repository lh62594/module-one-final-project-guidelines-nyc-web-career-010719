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
    answer = cap_all_words(gets.chomp)
    if answer == "Exit"
      wiki_or_game?
    else
      answer
    end
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
