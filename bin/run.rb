require_relative '../config/environment'

welcome
hit_any_key_to_continue
wiki_or_game?

puts
puts
puts "Here is the board"
board = [QuestionAnswer.find(1),
           QuestionAnswer.find(2),
           QuestionAnswer.find(3),
           QuestionAnswer.find(4),
           QuestionAnswer.find(5),
           QuestionAnswer.find(6),
           QuestionAnswer.find(7),
           QuestionAnswer.find(8),
           QuestionAnswer.find(9)
          ]
Board_values = [board[0].value,
                board[1].value,
                board[2].value,
                board[3].value,
                board[4].value,
                board[5].value,
                board[6].value,
                board[7].value,
                board[8].value
                ]
jeopardy = Jeopardy.new.play_game
jeopardy.display_board(Board_values)
jeopardy.play_game
