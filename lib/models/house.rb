# require_relative '../config/environment'

class House < ActiveRecord::Base

  has_many :character_houses
  has_many :characters, through: :character_houses

end #end of House class
