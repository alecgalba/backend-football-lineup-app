class RemoveShowIdFromUserCountries < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_countries, :show_id, :integer
  end
end
