class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :password_digest

  has_many :user_countries
  has_many :countries, through: :user_countries
  has_many :user_competitions
  has_many :competitions, through: :user_competitions
  has_many :user_events
  has_many :events, through: :user_events
end
