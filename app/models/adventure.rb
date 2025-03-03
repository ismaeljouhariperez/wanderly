class Adventure < ApplicationRecord
  # Relations
  belongs_to :user
  has_many :adventure_tags, dependent: :destroy
  has_many :tags, through: :adventure_tags
  has_many_attached :photos

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :location, presence: true

  # Geocoding
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
