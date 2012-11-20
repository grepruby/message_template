class CreateMessageTemplates < ActiveRecord::Migration
  def change
    create_table :message_templates do |t|
      t.string :name
      t.text :data
      t.datetime :active_from
      t.datetime :active_until
      t.string :status

      t.timestamps
    end
  end
end
