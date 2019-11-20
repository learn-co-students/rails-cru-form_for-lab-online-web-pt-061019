class Artist < ApplicationRecord
    has_many :song

    def to_s
        self.name
    end
end
