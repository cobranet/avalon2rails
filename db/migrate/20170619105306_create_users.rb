class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :userid
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
