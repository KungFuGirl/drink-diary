class CreateAppellationsVarietalsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :appellations_varietals, id: false do |t|
      t.integer :appellation_id
      t.integer :varietal_id
    end
  end
end
