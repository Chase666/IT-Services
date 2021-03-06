class Course < ApplicationRecord
  include PgSearch
  validates :name, presence: true
  validates :info, presence: true
  validates :info, length: {minimum: 15}
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  #validates :rating, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  belongs_to :company
  belongs_to :subject
  has_and_belongs_to_many :languages
  pg_search_scope :search_by_name, against: [:name]
end
