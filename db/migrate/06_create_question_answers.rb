class CreateQuestionAnswers < ActiveRecord::Migration[4.2]

   def change
     create_table :question_answers do |c|
       c.string :question
       c.string :answer
       c.integer :value
       c.integer :category_id
     end
   end

end
