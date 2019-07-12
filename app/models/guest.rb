class Guest < ApplicationRecord
    validates :accessCode, presence: true, length: { is: 6 }
    belongs_to :room, foreign_key: "accessCode"
    self.primary_key = "created_at"
end
