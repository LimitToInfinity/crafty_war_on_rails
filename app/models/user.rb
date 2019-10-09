class User < ApplicationRecord
    has_many :characters
    has_many :battle_classes, through: :characters
    has_many :races, through: :characters
    has_many :professions, through: :characters
    validates :name, uniqueness: true
end