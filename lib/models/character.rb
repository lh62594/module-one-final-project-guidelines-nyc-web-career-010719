class Character < ActiveRecord::Base

  has_many :character_houses
  has_many :houses, through: :character_houses



end #end of Character class
