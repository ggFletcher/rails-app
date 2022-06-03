json.extract! pitcher_box_score, :id, :official_game_date, :pitcher_name, :pitcher_team, :opposing_team, :venue, :at, :innings_pitched, :batters_faced, :num_hits, :singles, :doubles, :triples, :home_runs, :strikeouts, :walks, :intent_walks, :hit_by_pitches, :wild_pitches, :created_at, :updated_at
json.url pitcher_box_score_url(pitcher_box_score, format: :json)
