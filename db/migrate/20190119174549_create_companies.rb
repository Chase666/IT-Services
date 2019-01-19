class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :foundation_year
      t.integer :rank
      t.timestamps
    end
  end
end
