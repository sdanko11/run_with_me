class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :race_name, null:false
      t.string :distance, null:false
      t.integer :time_second, null:false 
      t.integer :time_minute, null:false
      t.string :location
      t.integer :user_id
      t.timestamps
    end
  end
end
