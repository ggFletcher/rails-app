class PitcherPitchStatsController < ApplicationController
  before_action :set_pitcher_pitch_stat, only: %i[ show edit update destroy ]
  helper_method :sort_column, :sort_direction
  
  # GET /pitcher_pitch_stats or /pitcher_pitch_stats.json
  def index
    @pitcher_pitch_stats = PitcherPitchStat.search(params[:search]).order(sort_column + " " + sort_direction)
  end 

  # GET /pitcher_pitch_stats/1 or /pitcher_pitch_stats/1.json
  def show
  end

  # GET /pitcher_pitch_stats/new
  def new
    @pitcher_pitch_stat = PitcherPitchStat.new
  end

  # GET /pitcher_pitch_stats/1/edit
  def edit
  end

  # POST /pitcher_pitch_stats or /pitcher_pitch_stats.json
  def create
    @pitcher_pitch_stat = PitcherPitchStat.new(pitcher_pitch_stat_params)

    respond_to do |format|
      if @pitcher_pitch_stat.save
        format.html { redirect_to pitcher_pitch_stat_url(@pitcher_pitch_stat), notice: "Pitcher pitch stat was successfully created." }
        format.json { render :show, status: :created, location: @pitcher_pitch_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pitcher_pitch_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pitcher_pitch_stats/1 or /pitcher_pitch_stats/1.json
  def update
    respond_to do |format|
      if @pitcher_pitch_stat.update(pitcher_pitch_stat_params)
        format.html { redirect_to pitcher_pitch_stat_url(@pitcher_pitch_stat), notice: "Pitcher pitch stat was successfully updated." }
        format.json { render :show, status: :ok, location: @pitcher_pitch_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pitcher_pitch_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitcher_pitch_stats/1 or /pitcher_pitch_stats/1.json
  def destroy
    @pitcher_pitch_stat.destroy

    respond_to do |format|
      format.html { redirect_to pitcher_pitch_stats_url, notice: "Pitcher pitch stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def sort_column
      PitcherPitchStat.column_names.include?(params[:sort]) ? params[:sort] : "pitcher_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_pitcher_pitch_stat
      @pitcher_pitch_stat = PitcherPitchStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pitcher_pitch_stat_params
      params.require(:pitcher_pitch_stat).permit(:pitcher_name, :pitcher_team, :pitch_type, :times_thrown, :strikes, :balls, :put_in_play, :to_righty, :to_lefty, :called_strikes, :swinging_strikes, :fouls, :balls_in_dirt, :in_play_out, :in_play_safe, :in_play_runs, :hit_by_pitches, :avg_speed, :avg_spin_rate, :avg_hit_launch_speed, :avg_hit_launch_angle)
    end
end
