require "test_helper"

class PitcherBoxScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pitcher_box_score = pitcher_box_scores(:one)
  end

  test "should get index" do
    get pitcher_box_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_pitcher_box_score_url
    assert_response :success
  end

  test "should create pitcher_box_score" do
    assert_difference("PitcherBoxScore.count") do
      post pitcher_box_scores_url, params: { pitcher_box_score: { at: @pitcher_box_score.at, batters_faced: @pitcher_box_score.batters_faced, doubles: @pitcher_box_score.doubles, hit_by_pitches: @pitcher_box_score.hit_by_pitches, home_runs: @pitcher_box_score.home_runs, innings_pitched: @pitcher_box_score.innings_pitched, intent_walks: @pitcher_box_score.intent_walks, num_hits: @pitcher_box_score.num_hits, official_game_date: @pitcher_box_score.official_game_date, opposing_team: @pitcher_box_score.opposing_team, pitcher_name: @pitcher_box_score.pitcher_name, pitcher_team: @pitcher_box_score.pitcher_team, singles: @pitcher_box_score.singles, strikeouts: @pitcher_box_score.strikeouts, triples: @pitcher_box_score.triples, venue: @pitcher_box_score.venue, walks: @pitcher_box_score.walks, wild_pitches: @pitcher_box_score.wild_pitches } }
    end

    assert_redirected_to pitcher_box_score_url(PitcherBoxScore.last)
  end

  test "should show pitcher_box_score" do
    get pitcher_box_score_url(@pitcher_box_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_pitcher_box_score_url(@pitcher_box_score)
    assert_response :success
  end

  test "should update pitcher_box_score" do
    patch pitcher_box_score_url(@pitcher_box_score), params: { pitcher_box_score: { at: @pitcher_box_score.at, batters_faced: @pitcher_box_score.batters_faced, doubles: @pitcher_box_score.doubles, hit_by_pitches: @pitcher_box_score.hit_by_pitches, home_runs: @pitcher_box_score.home_runs, innings_pitched: @pitcher_box_score.innings_pitched, intent_walks: @pitcher_box_score.intent_walks, num_hits: @pitcher_box_score.num_hits, official_game_date: @pitcher_box_score.official_game_date, opposing_team: @pitcher_box_score.opposing_team, pitcher_name: @pitcher_box_score.pitcher_name, pitcher_team: @pitcher_box_score.pitcher_team, singles: @pitcher_box_score.singles, strikeouts: @pitcher_box_score.strikeouts, triples: @pitcher_box_score.triples, venue: @pitcher_box_score.venue, walks: @pitcher_box_score.walks, wild_pitches: @pitcher_box_score.wild_pitches } }
    assert_redirected_to pitcher_box_score_url(@pitcher_box_score)
  end

  test "should destroy pitcher_box_score" do
    assert_difference("PitcherBoxScore.count", -1) do
      delete pitcher_box_score_url(@pitcher_box_score)
    end

    assert_redirected_to pitcher_box_scores_url
  end
end
