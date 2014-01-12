class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :reciever_id
      t.integer :sender_id
      t.timestamps
    end
  end
end
