class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :subject, null:false
      t.text :message, null:false
      t.integer :sender_id
      t.integer :reciever_id
      t.timestamps
    end
  end
end
