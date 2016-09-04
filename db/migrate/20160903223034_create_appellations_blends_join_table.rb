class CreateAppellationsBlendsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :appellations_blends, id: false do |t|
      t.integer :appellation_id
      t.integer :blend_id
    end
  end
end
