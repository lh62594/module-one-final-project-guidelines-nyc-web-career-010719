class CreateCharacterHouses < ActiveRecord::Migration[4.2]

  def change
    create_table :character_houses do |ch|
      ch.string :name
      ch.integer :character_id
      ch.integer :house_id
    end
  end

end
