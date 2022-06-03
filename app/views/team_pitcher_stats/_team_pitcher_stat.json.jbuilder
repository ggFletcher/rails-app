json.extract! team_pitcher_stat, :id, :pitcher_team, :num_pitchers, :batters_faced, :num_hits, :singles, :doubles, :triples, :home_runs, :strikeouts, :walks, :intent_walks, :hit_by_pitches, :wild_pitches, :created_at, :updated_at
json.url team_pitcher_stat_url(team_pitcher_stat, format: :json)
