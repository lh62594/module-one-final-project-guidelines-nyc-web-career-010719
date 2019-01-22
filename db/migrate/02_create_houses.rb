class CreateHouses < ActiveRecord::Migration[4.2]

  def change
    create_table :houses do |h|
      h.string :name
    end
  end

end
