class Character < ApplicationRecord
    belongs_to :battle_class
    belongs_to :profession
    belongs_to :race
    belongs_to :user
    validates :name, uniqueness: true
end