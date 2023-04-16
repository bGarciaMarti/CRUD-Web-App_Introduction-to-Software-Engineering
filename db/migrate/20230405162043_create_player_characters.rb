class CreatePlayerCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :player_characters do |t|
      t.string :name
      t.integer :main_stats
      t.integer :proficiency
      t.string :saving_throws

      t.timestamps
    end
  end
end
