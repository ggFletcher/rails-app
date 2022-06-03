class TeamPitcherStatsController < ApplicationController
  before_action :set_team_pitcher_stat, only: %i[ show edit update destroy ]
  helper_method :sort_column, :sort_direction
  # GET /team_pitcher_stats or /team_pitcher_stats.json
  def index
    @team_pitcher_stats = TeamPitcherStat.search(params[:search]).order(sort_column + " " + sort_direction)
  end

  # GET /team_pitcher_stats/1 or /team_pitcher_stats/1.json
  def show
  end

  # GET /team_pitcher_stats/new
  def new
    @team_pitcher_stat = TeamPitcherStat.new
  end

  # GET /team_pitcher_stats/1/edit
  def edit
  end

  # POST /team_pitcher_stats or /team_pitcher_stats.json
  def create
    @team_pitcher_stat = TeamPitcherStat.new(team_pitcher_stat_params)

    respond_to do |format|
      if @team_pitcher_stat.save
        format.html { redirect_to team_pitcher_stat_url(@team_pitcher_stat), notice: "Team pitcher stat was successfully created." }
        format.json { render :show, status: :created, location: @team_pitcher_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_pitcher_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_pitcher_stats/1 or /team_pitcher_stats/1.json
  def update
    respond_to do |format|
      if @team_pitcher_stat.update(team_pitcher_stat_params)
        format.html { redirect_to team_pitcher_stat_url(@team_pitcher_stat), notice: "Team pitcher stat was successfully updated." }
        format.json { render :show, status: :ok, location: @team_pitcher_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_pitcher_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_pitcher_stats/1 or /team_pitcher_stats/1.json
  def destroy
    @team_pitcher_stat.destroy

    respond_to do |format|
      format.html { redirect_to team_pitcher_stats_url, notice: "Team pitcher stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def sort_column
      PitcherBoxScore.column_names.include?(params[:sort]) ? params[:sort] : "pitcher_team"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_team_pitcher_stat
      @team_pitcher_stat = TeamPitcherStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_pitcher_stat_params
      params.require(:team_pitcher_stat).permit(:pitcher_team, :num_pitchers, :batters_faced, :num_hits, :singles, :doubles, :triples, :home_runs, :strikeouts, :walks, :intent_walks, :hit_by_pitches, :wild_pitches)
    end
end
