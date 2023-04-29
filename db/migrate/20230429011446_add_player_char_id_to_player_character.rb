class AddPlayerCharIdToPlayerCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :player_characters, :playerChar_id, :integer
    add_index :player_characters, :playerChar_id
  end
end
