class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :userid
      t.string :desc
      
      t.timestamps
    end
  end
end
