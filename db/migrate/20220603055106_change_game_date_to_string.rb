class ChangeGameDateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :pitcher_box_scores, :official_game_date, :string
  end
end
