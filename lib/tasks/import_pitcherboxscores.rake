require 'csv'
namespace :import do
  desc "Import pitcher_box_scores from CSV"
  task pitcher_box_scores: :environment do
    counter = 0
    CSV.foreach('df_pitcher_box_scores.csv', headers: true) do |row|
      item = PitcherBoxScore.create!(row.to_hash)
      counter += 1 if item.persisted?
      p counter
    end
  end 
end