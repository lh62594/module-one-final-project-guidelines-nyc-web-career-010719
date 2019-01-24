class CreateCategories < ActiveRecord::Migration[4.2]
    def change
      create_table :categories do |c|
        c.string :name
      end
    end
end
