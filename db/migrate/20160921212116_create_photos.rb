class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :user, foreign_key: true
      t.attachment :photo, :null => false
      t.boolean :is_private
      
      t.timestamps
    end
  end
end
