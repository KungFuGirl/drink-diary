class AddBlendAndVarietalRefToWines < ActiveRecord::Migration[5.0]
  def change
    add_reference :wines, :blend, foreign_key: true
    add_reference :wines, :varietal, foreign_key: true
  end
end
