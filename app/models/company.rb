class Company < ApplicationRecord
  include PgSearch
  validates :name, presence: true
  #validates :rank, numericality: { only_integer: true, greater_than: 0}
  has_many :courses
  pg_search_scope :search_by_name, against: [:name, :organization_name]
end
