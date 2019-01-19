class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.integer :rating
      t.integer :votes
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
