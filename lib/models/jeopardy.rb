class Jeopardy
  attr_accessor :score, :turn_count

# ~~~~~~~~~~~~~~~~~~~ CLASS METHODS ~~~~~~~~~~~~~~~~~~~~ #
  def initialize
    @score = 0
    @turn_count = 0
  end

# ~~~~~~~~~~~~~~~~~~~ INSTANCE METHODS ~~~~~~~~~~~~~~~~~~~~ #
  def turn
    self.turn_count += 1
    if self.turn_count > 10
      return end_game
    else
      display_board
      get_question
    end
  end

  def get_question
    category = converted_category
    value = converted_value

    q_array = QuestionAnswer.where(["category_id = ? and value = ? and played IS NULL", category, value]).shuffle

    if q_array == []
      puts " "
      puts " You've answered all the questions in this category and value!"
      puts " "
      puts " Please choose another category"
      puts " "
      get_question
    else
      puts " ##{self.turn_count})#{q_array[0].question}"
      q_array[0].update(played: "XXX")
      correct_answer?(q_array[0].answer, value)
    end
  end

  def correct_answer?(correct_answer, points)
    given_answer = enter_answer

    if given_answer == nil
      puts " "
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      puts "        Sorry, that was incorrect!"
      puts " "
      puts "        The correct answer is: #{correct_answer}"
      puts " "
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      sleep(1.5)
    elsif given_answer.capitalize.include?("Exit")
      return end_game
    elsif correct_answer.include?(cap_all_words(given_answer))
      self.score += points
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      puts "        Correct! You earned #{points} points!"
      puts " "
      puts "        Your score is now #{self.score}"
      puts " "
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      sleep(1.5)
    else
      puts " "
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      puts "        Sorry, that was incorrect!"
      puts " "
      puts "        The correct answer is: #{correct_answer}"
      puts " "
      puts "    - - - - - - - - - - - - - - - - - - - - - - - - - - -"
      puts " "
      sleep(1.5)
    end
    turn
  end

  def end_game
    puts " "
    puts "    ┌┬┐┬ ┬┌─┐┌┐┌┬┌─┌─┐  ┌─┐┌─┐┬─┐  ┌─┐┬  ┌─┐┬ ┬┬┌┐┌┌─┐  ┬"
    puts "     │ ├─┤├─┤│││├┴┐└─┐  ├┤ │ │├┬┘  ├─┘│  ├─┤└┬┘│││││ ┬  │"
    puts "     ┴ ┴ ┴┴ ┴┘└┘┴ ┴└─┘  └  └─┘┴└─  ┴  ┴─┘┴ ┴ ┴ ┴┘└┘└─┘  o"
    puts " "
    puts "                Your final score is #{@score}!"
    puts " "
    sleep(2)
    wiki_or_game?
  end


end #end of Jeopardy class
