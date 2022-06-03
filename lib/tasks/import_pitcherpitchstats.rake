require 'csv'
namespace :import do
  desc "Import pitcher_pitch_stats from CSV"
  task pitcher_pitch_stats: :environment do
    counter = 0
    CSV.foreach('df_pitcher_pitch_stats.csv', headers: true) do |row|
      item = PitcherPitchStat.create!(row.to_hash)
      counter += 1 if item.persisted?
      p counter
    end
  end 
end