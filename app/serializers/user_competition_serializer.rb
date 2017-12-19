class UserCountrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :competition_id

  belongs_to :user
  belongs_to :competition
end
