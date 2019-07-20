class AddLanguageIdToColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses,:language_id,:integer
  end
end
