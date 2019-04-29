class Mayor < ApplicationRecord
    has_one :municipality

    # Validaciones
    validates :phone, :numericality => { :only_integer => true }
    validates :name, :last_name, :nacionality, :mail, :phone, :presence => true
    validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    def full_name
        self.name + " " + self.last_name
    end
end
