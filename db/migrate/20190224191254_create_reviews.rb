class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.string :hours_played

      t.timestamps
    end
  end
end
