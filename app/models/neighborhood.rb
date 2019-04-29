class Neighborhood < ApplicationRecord
  belongs_to :municipality

  # Validaciones
  validates :population, :block_count, :numericality => { :only_integer => true }
  validates :name, :block_count, :population, :presence => true

end
