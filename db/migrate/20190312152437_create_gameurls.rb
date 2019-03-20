class CreateGameurls < ActiveRecord::Migration[5.2]
  def change
    create_table :gameurls do |t|
      t.integer :url

      t.timestamps
    end
  end
end
