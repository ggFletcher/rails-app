class CreatePitcherBoxScores < ActiveRecord::Migration[7.0]
  def change
    create_table :pitcher_box_scores do |t|
      t.datetime :official_game_date
      t.string :pitcher_name
      t.string :pitcher_team
      t.string :opposing_team
      t.string :venue
      t.string :at
      t.float :innings_pitched
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
