class Mayor < ApplicationRecord
    has_one :municipality
    def full_name
        self.name + " " + self.last_name
    end
end
