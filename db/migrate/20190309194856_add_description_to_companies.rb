class AddDescriptionToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies,:phone,:integer
    add_column :companies, :email,:string
    add_column :companies,:description,:string
    add_column :companies, :organization_name, :string
  end
end
