class CreateSodas < ActiveRecord::Migration[5.0]
  def change
    create_table :sodas do |t|
      t.references :user, foreign_key: true
      t.references :country, foreign_key: true
      t.string :name
      t.string :brand
      t.string :origin_data
      t.boolean :is_diet
      t.boolean :is_caffeinated
      t.string :color
      t.references :users, column: :creator_id
      t.references :users, column: :last_editor_id

      t.timestamps
    end
    add_reference :photos, :soda, foreign_key: true
    add_reference :notes, :soda, foreign_key: true
  end
end
