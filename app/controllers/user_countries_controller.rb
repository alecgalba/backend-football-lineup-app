class UserCountriesController < ApplicationController

  def index
    user = User.find(params[:id])
    user_countries = user.user_countries
    render json: user_countries
  end

  def destroy
    user_country = UserCountry.find_by(user_id: params[:id], country_id: params[:country_id])
    user_country.destroy
    countries = User.find(params[:id]).countries

    render json: countries
  end

end
