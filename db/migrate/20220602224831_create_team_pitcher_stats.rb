class CreateTeamPitcherStats < ActiveRecord::Migration[7.0]
  def change
    create_table :team_pitcher_stats do |t|
      t.string :pitcher_team
      t.integer :num_pitchers
      t.integer :batters_faced
      t.integer :num_hits
      t.integer :singles
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.integer :strikeouts
      t.integer :walks
      t.integer :intent_walks
      t.integer :hit_by_pitches
      t.integer :wild_pitches

      t.timestamps
    end
  end
end
