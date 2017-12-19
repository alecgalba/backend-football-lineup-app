class UserEventsController < ApplicationController

  def index
    user = User.find(params[:id])
    user_events = user.user_events
    render json: user_events
  end

  def destroy
    user_event = UserEvent.find_by(user_id: params[:id], match_id: params[:match_id])
    user_event.destroy
    events = User.find(params[:id]).events

    render json: events
  end

end
