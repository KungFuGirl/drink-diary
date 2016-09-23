class CreateJoinTableFlavorsSodas < ActiveRecord::Migration[5.0]
  def change
    create_join_table :flavors, :sodas do |t|
      t.references :flavor, index: true, foreign_key: true
      t.references :soda, index: true, foreign_key: true
    end
  end
end
