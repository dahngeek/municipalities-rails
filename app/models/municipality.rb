class Municipality < ApplicationRecord
  belongs_to :mayor
  validates_uniqueness_of :mayor_id

  validates :name, :foundation_year, :URL, :mail, :mayor_id, :presence => true
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_many :neighborhood
end
