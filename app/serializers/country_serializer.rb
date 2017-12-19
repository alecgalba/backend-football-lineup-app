class UserSerializer < ActiveModel::Serializer
  attributes :id, :country_id, :country_name

  has_many :user_competitions, dependent: :destroy
  has_many :users, through: :user_competitions
  has_many :competitions
end
