class CreatePlayedColumn < ActiveRecord::Migration[4.2]

  def change
    add_column :question_answers, :played, :string
  end

end
