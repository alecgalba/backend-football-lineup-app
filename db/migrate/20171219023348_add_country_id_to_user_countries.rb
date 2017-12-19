class AddCountryIdToUserCountries < ActiveRecord::Migration[5.1]
  def change
    add_column :user_countries, :country_id, :integer
  end
end
