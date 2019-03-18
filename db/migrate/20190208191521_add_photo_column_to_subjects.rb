class AddPhotoColumnToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_attachment :subjects, :avatar
  end
end
