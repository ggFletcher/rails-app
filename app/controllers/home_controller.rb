class HomeController < ApplicationController
  before_action :set_pitcher_pitch_stat, only: %i[ show edit update destroy ]
  helper_method :sort_column, :sort_direction

  # GET /pitcher_pitch_stats or /pitcher_pitch_stats.json
  def index
    @pitcher_pitch_stats = PitcherPitchStat.search(params[:search]).order(sort_column + " " + sort_direction)
  end 
  
  private

  def sort_column
    PitcherPitchStat.column_names.include?(params[:sort]) ? params[:sort] : "pitcher_name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
