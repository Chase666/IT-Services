class Company < ApplicationRecord
  include PgSearch
  has_many :courses
  validates :name, presence: true
  #validates :rank, numericality: { only_integer: true, greater_than: 0}
  pg_search_scope :search_by_name, against: [:name, :organization_name]
end
