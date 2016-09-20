class AddClassificationRefToCountryAppellations < ActiveRecord::Migration[5.0]
  def change
    add_reference :classifications, :country, foreign_key: true
    add_reference :appellations, :classification, foreign_key: true
  end
end
