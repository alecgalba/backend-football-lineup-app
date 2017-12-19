class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :match_id
      t.string :country_id
      t.string :country_name
      t.string :league_id
      t.string :league_name
      t.string :match_date
      t.string :match_status
      t.string :match_time
      t.string :match_hometeam_name
      t.string :match_hometeam_score
      t.string :match_awayteam_name
      t.string :match_awayteam_score

      t.timestamps
    end
  end
end
