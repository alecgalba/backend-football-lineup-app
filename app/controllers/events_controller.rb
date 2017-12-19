class EventsController < ApplicationController

  def index
    user = User.find(params[:id])
    events = user.events
    render json: events
  end

  def create
    user = User.find(params[:id])

    event = Event.find_or_create_by(
              id: params[:id],
              country_id: params[:country_id],
              country_name: params[:country_name]
              league_id: params[:league_id],
              league_name: params[:league_name],
              match_date: params[:match_date],
              match_status: params[:match_status],
              match_time: params[:match_time],
              match_hometeam_name: params[:match_hometeam_name],
              match_hometeam_score: params[:match_hometeam_score],
              match_awayteam_name: params[:match_awayteam_name],
              match_awayteam_score: params[:match_awayteam_score]
            )
    events.users << @user

    render json: user.events
  end

  def destroy
    competition = Competition.find(params[:id])
    user = User.find(params[:id])
    competition.destroy
    render json: user.competition
  end

end
