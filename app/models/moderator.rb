class Moderator < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :accessCode, presence: true, length: { is: 6 }
    
    belongs_to :room, foreign_key: "accessCode"

    self.primary_key = "name"
end
