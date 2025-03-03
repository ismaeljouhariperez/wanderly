class AdventureTag < ApplicationRecord
  belongs_to :adventure
  belongs_to :tag

  validates :adventure_id, uniqueness: { scope: :tag_id }
end
