class Competition < ApplicationRecord
  has_many :user_competitions, dependent: :destroy
  has_many :users, through: :user_competitions
  belongs_to :country
  has_many :events
end
