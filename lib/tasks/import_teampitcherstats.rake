require 'csv'
namespace :import do
  desc "Import team_pitcher_stats from CSV"
  task team_pitcher_stats: :environment do
    counter = 0
    CSV.foreach('df_team_pitcher_stats.csv', headers: true) do |row|
      item = TeamPitcherStat.create!(row.to_hash)
      counter += 1 if item.persisted?
      p counter
    end
  end 
end