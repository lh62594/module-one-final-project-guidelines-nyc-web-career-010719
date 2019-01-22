class CreateCharacterColumns < ActiveRecord::Migration[4.2]

  def change
    add_column :characters, :url, :string
    add_column :characters, :gender, :string
    add_column :characters, :culture, :string
    add_column :characters, :born, :string
    add_column :characters, :died, :string
    add_column :characters, :titles, :string
    add_column :characters, :aliases, :string
    add_column :characters, :father, :string
    add_column :characters, :mother, :string
    add_column :characters, :spouse, :string
    add_column :characters, :allegiances, :string
    add_column :characters, :books, :string
    add_column :characters, :tvSeries, :string
  end

end
