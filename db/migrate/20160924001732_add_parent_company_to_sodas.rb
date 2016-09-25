class AddParentCompanyToSodas < ActiveRecord::Migration[5.0]
  def change
    rename_column :sodas, :producer, :parent_company
  end
end
