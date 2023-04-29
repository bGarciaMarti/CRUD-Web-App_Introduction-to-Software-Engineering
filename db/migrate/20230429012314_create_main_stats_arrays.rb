class CreateMainStatsArrays < ActiveRecord::Migration[6.1]
  def change
    create_table :main_stats_arrays do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
