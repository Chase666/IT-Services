class AddCompanyidToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses,:company_id,:integer
  end
end
