class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.string :review_text
      t.string :review_stars
      t.timestamp :post_data
      t.timestamps
    end
  end
end
