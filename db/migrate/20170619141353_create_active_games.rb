class CreateActiveGames < ActiveRecord::Migration[5.1]
  def change
    create_table :active_games do |t|
      t.string :userid
      t.integer :game_id
      t.timestamps
    end
  end
end
