class ChangeIntegerLimitInCompaniesTable < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :phone, :integer, limit: 8
  end
end
