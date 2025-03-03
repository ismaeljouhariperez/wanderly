class Tag < ApplicationRecord
  # Relations
  has_many :adventure_tags, dependent: :destroy
  has_many :adventures, through: :adventure_tags

  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  # Callbacks
  before_save :normalize_name

  private

  def normalize_name
    self.name = name.downcase.strip if name.present?
  end
end
