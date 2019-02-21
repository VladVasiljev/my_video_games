class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :Game_Title
      t.date :Release_Date
      t.text :Description
      t.string :Publisher

      t.timestamps
    end
  end
end
