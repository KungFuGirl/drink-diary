class AddParentCompanyToSodas < ActiveRecord::Migration[5.0]
  def change
    add_column :sodas, :parent_company, :string
  end
end
