class CreateJoinTableIngredientsSodas < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ingredients, :sodas do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.references :soda, index: true, foreign_key: true
      # t.index [:ingredient_id, :soda_id]
      # t.index [:soda_id, :ingredient_id]
    end
  end
end
