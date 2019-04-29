class Municipality < ApplicationRecord
  belongs_to :mayor
  validates_uniqueness_of :mayor_id

  has_many :neighborhood
end
