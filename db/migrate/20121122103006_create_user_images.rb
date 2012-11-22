class CreateUserImages < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
      t.references :user
      t.timestamps
    end
    
    add_column :user_images, :photo, :string
  end
end
