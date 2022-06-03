class PitcherBoxScoresController < ApplicationController
  before_action :set_pitcher_box_score, only: %i[ show edit update destroy ]
  helper_method :sort_column, :sort_direction

  # GET /pitcher_box_scores or /pitcher_box_scores.json
  def index
    @pitcher_box_scores = PitcherBoxScore.search(params[:search]).order(sort_column + " " + sort_direction)
  end

  # GET /pitcher_box_scores/1 or /pitcher_box_scores/1.json
  def show
  end

  # GET /pitcher_box_scores/new
  def new
    @pitcher_box_score = PitcherBoxScore.new
  end

  # GET /pitcher_box_scores/1/edit
  def edit
  end

  # POST /pitcher_box_scores or /pitcher_box_scores.json
  def create
    @pitcher_box_score = PitcherBoxScore.new(pitcher_box_score_params)

    respond_to do |format|
      if @pitcher_box_score.save
        format.html { redirect_to pitcher_box_score_url(@pitcher_box_score), notice: "Pitcher box score was successfully created." }
        format.json { render :show, status: :created, location: @pitcher_box_score }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pitcher_box_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pitcher_box_scores/1 or /pitcher_box_scores/1.json
  def update
    respond_to do |format|
      if @pitcher_box_score.update(pitcher_box_score_params)
        format.html { redirect_to pitcher_box_score_url(@pitcher_box_score), notice: "Pitcher box score was successfully updated." }
        format.json { render :show, status: :ok, location: @pitcher_box_score }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pitcher_box_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitcher_box_scores/1 or /pitcher_box_scores/1.json
  def destroy
    @pitcher_box_score.destroy

    respond_to do |format|
      format.html { redirect_to pitcher_box_scores_url, notice: "Pitcher box score was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def sort_column
      PitcherBoxScore.column_names.include?(params[:sort]) ? params[:sort] : "pitcher_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_pitcher_box_score
      @pitcher_box_score = PitcherBoxScore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pitcher_box_score_params
      params.require(:pitcher_box_score).permit(:official_game_date, :pitcher_name, :pitcher_team, :opposing_team, :venue, :at, :innings_pitched, :batters_faced, :num_hits, :singles, :doubles, :triples, :home_runs, :strikeouts, :walks, :intent_walks, :hit_by_pitches, :wild_pitches)
    end
end
