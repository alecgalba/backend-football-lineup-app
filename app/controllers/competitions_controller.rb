class CompetitionsController < ApplicationController

  def index
    user = User.find(params[:id])
    competitions = user.competitions
    render json: competitions
  end

  def create
    user = User.find(params[:id])

    competition = Competition.find_or_create_by(
              id: params[:id],
              country_id: params[:country_id],
              country_name: params[:country_name]
              league_id: params[:league_id],
              league_name: params[:league_name]
            )
    competition.users << @user

    render json: user.competitions
  end

  def destroy
    competition = Competition.find(params[:id])
    user = User.find(params[:id])
    competition.destroy
    render json: user.competition
  end

end
