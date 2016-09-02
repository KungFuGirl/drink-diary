class CreateBlendsVarietalsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :blends_varietals, id: false do |t|
      t.integer :blend_id
      t.integer :varietal_id
    end
  end
end
