class Category < ActiveRecord::Base
  has_many :question_answers
end #end of Category class
