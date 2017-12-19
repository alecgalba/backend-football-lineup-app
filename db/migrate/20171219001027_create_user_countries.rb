class CreateUserCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :user_countries do |t|
      t.integer :user_id
      t.integer :show_id

      t.timestamps
    end
  end
end
