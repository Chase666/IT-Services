class Subject < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  has_many :courses
  has_attached_file :avatar, styles: { default: "350x300>",logo: "50x50"}, default_url: "missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
