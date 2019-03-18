class Company < ApplicationRecord
  validates :name, presence: true
  #validates :rank, numericality: { only_integer: true, greater_than: 0}
  has_many :courses
end
