class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :responses
      t.integer :user_id
      t.integer :message_template_id

      t.timestamps
    end
  end
end
