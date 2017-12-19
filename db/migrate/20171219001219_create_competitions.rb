class CreateCompetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.string :country_id
      t.string :country_name
      t.string :league_id
      t.string :league_name

      t.timestamps
    end
  end
end
