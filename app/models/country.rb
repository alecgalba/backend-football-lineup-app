class Country < ApplicationRecord
  has_many :user_competitions, dependent: :destroy
  has_many :users, through: :user_competitions
  has_many :competitions
end
