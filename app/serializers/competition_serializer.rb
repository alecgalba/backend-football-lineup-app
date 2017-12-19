class CompetitionSerializer < ActiveModel::Serializer
  attributes :id, :country_id, :country_name, :league_id, :league_name

  has_many :user_competitions, dependent: :destroy
  has_many :users, through: :user_competitions
  belongs_to :country
  has_many :events
end
