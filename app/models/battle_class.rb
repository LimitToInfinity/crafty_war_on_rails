class BattleClass < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters
end