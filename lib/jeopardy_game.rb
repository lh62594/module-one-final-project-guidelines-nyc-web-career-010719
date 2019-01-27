def reset_played_column
  QuestionAnswer.where("played IS NOT NULL").each do |question|
    question.update(played: nil)
  end
end

def play_game
  reset_played_column
  Jeopardy.new.turn
end


def converted_value
  prompt = TTY::Prompt.new
  choices = [
    "                  100",
    "                  200",
    "                  300"
  ]
  puts "          Please select a category:"
  selected_value = prompt.select(" ", choices)
  if selected_value.include?("100")
    100
  elsif selected_value.include?("200")
    200
  elsif selected_value.include?("300")
    300
  end
end

def converted_category
  prompt = TTY::Prompt.new
  choices = [
    "             Name The House",
    "             Name The Person",
    "             Misc Facts"
  ]
  puts "          Please select a category:"
  category = prompt.select(" ", choices)
  if category.include?("House")
    1
  elsif category.include?("Name")
    2
  elsif category.include?("Misc")
    3
  end
end

def enter_answer
  prompt = TTY::Prompt.new
  prompt.ask("          Answer:")
end
