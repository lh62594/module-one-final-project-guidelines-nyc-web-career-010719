class CreateHouseColumns < ActiveRecord::Migration[4.2]

  def change
    add_column :houses, :url, :string
    add_column :houses, :region, :string
    add_column :houses, :coatOfArms, :string
    add_column :houses, :words, :string
    add_column :houses, :titles, :string
    add_column :houses, :seats, :string
    add_column :houses, :currentLord, :string
    add_column :houses, :heir, :string
    add_column :houses, :overlord, :string
    add_column :houses, :founded, :string
    add_column :houses, :founder, :string
    add_column :houses, :diedOut, :string
    add_column :houses, :ancestralWeapons, :string
    add_column :houses, :cadetBranches, :string
    add_column :houses, :swornMembers, :string
  end

end
