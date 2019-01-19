class Course < ApplicationRecord
  validates :name, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  validates :votes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :location, presence: true
end
