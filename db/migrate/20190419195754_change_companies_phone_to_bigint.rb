class ChangeCompaniesPhoneToBigint < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :phone, :bigint
  end
end
