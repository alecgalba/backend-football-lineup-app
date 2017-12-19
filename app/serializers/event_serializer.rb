class EventSerializer < ActiveModel::Serializer
  attributes :id, :match_id, :country_id, :country_name, :league_id, :league_name, :match_date, :match_status, :match_time, :match_hometeam_name, :match_hometeam_score, :match_awayteam_name, :match_awayteam_score

  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events
  belongs_to :competition
end
