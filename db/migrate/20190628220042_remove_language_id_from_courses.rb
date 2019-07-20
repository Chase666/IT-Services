class RemoveLanguageIdFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :language_id
  end
end
