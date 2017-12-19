class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :country_id
      t.string :country_name

      t.timestamps
    end
  end
end
