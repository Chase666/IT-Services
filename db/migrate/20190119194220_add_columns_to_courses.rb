class AddColumnsToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :price,:integer
    add_column :courses,:rating,:float
  end
end
