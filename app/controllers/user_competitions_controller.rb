class UserCompetitionsController < ApplicationController

  def index
    user = User.find(params[:id])
    user_competitions = user.user_competitions
    render json: user_competitions
  end

  def destroy
    user_competition = UserCompetition.find_by(user_id: params[:id], competition_id: params[:competition_id])
    user_competition.destroy
    competitions = User.find(params[:id]).competitions

    render json: competitions
  end

end
