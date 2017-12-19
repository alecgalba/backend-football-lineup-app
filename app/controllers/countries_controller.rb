class CountriesController < ApplicationController

  def index
    user = User.find(params[:id])
    countries = user.countries
    render json: countries
  end

  def create
    @user = User.find(params[:id])

    country = Country.find_or_create_by(
              id: params[:id],
              country_id: params[:country_id],
              country_name: params[:country_name]
            )
    country.users << @user

    render json: @user.countries
  end

  def search
    response = RestClient::Request.execute(
      method: :get,
      url: "https://apifootball.com/api/?action=get_countries&APIkey=dd1844f2b006f50f76c6feb71d92f26b5331d8f173c9e09fba716702d7729d48",
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      }
    )
    results = JSON.parse(response)
    render json: results
  end

end
