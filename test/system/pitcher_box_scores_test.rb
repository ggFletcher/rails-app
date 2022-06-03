require "application_system_test_case"

class PitcherBoxScoresTest < ApplicationSystemTestCase
  setup do
    @pitcher_box_score = pitcher_box_scores(:one)
  end

  test "visiting the index" do
    visit pitcher_box_scores_url
    assert_selector "h1", text: "Pitcher box scores"
  end

  test "should create pitcher box score" do
    visit pitcher_box_scores_url
    click_on "New pitcher box score"

    fill_in "At", with: @pitcher_box_score.at
    fill_in "Batters faced", with: @pitcher_box_score.batters_faced
    fill_in "Doubles", with: @pitcher_box_score.doubles
    fill_in "Hit by pitches", with: @pitcher_box_score.hit_by_pitches
    fill_in "Home runs", with: @pitcher_box_score.home_runs
    fill_in "Innings pitched", with: @pitcher_box_score.innings_pitched
    fill_in "Intent walks", with: @pitcher_box_score.intent_walks
    fill_in "Num hits", with: @pitcher_box_score.num_hits
    fill_in "Official game date", with: @pitcher_box_score.official_game_date
    fill_in "Opposing team", with: @pitcher_box_score.opposing_team
    fill_in "Pitcher name", with: @pitcher_box_score.pitcher_name
    fill_in "Pitcher team", with: @pitcher_box_score.pitcher_team
    fill_in "Singles", with: @pitcher_box_score.singles
    fill_in "Strikeouts", with: @pitcher_box_score.strikeouts
    fill_in "Triples", with: @pitcher_box_score.triples
    fill_in "Venue", with: @pitcher_box_score.venue
    fill_in "Walks", with: @pitcher_box_score.walks
    fill_in "Wild pitches", with: @pitcher_box_score.wild_pitches
    click_on "Create Pitcher box score"

    assert_text "Pitcher box score was successfully created"
    click_on "Back"
  end

  test "should update Pitcher box score" do
    visit pitcher_box_score_url(@pitcher_box_score)
    click_on "Edit this pitcher box score", match: :first

    fill_in "At", with: @pitcher_box_score.at
    fill_in "Batters faced", with: @pitcher_box_score.batters_faced
    fill_in "Doubles", with: @pitcher_box_score.doubles
    fill_in "Hit by pitches", with: @pitcher_box_score.hit_by_pitches
    fill_in "Home runs", with: @pitcher_box_score.home_runs
    fill_in "Innings pitched", with: @pitcher_box_score.innings_pitched
    fill_in "Intent walks", with: @pitcher_box_score.intent_walks
    fill_in "Num hits", with: @pitcher_box_score.num_hits
    fill_in "Official game date", with: @pitcher_box_score.official_game_date
    fill_in "Opposing team", with: @pitcher_box_score.opposing_team
    fill_in "Pitcher name", with: @pitcher_box_score.pitcher_name
    fill_in "Pitcher team", with: @pitcher_box_score.pitcher_team
    fill_in "Singles", with: @pitcher_box_score.singles
    fill_in "Strikeouts", with: @pitcher_box_score.strikeouts
    fill_in "Triples", with: @pitcher_box_score.triples
    fill_in "Venue", with: @pitcher_box_score.venue
    fill_in "Walks", with: @pitcher_box_score.walks
    fill_in "Wild pitches", with: @pitcher_box_score.wild_pitches
    click_on "Update Pitcher box score"

    assert_text "Pitcher box score was successfully updated"
    click_on "Back"
  end

  test "should destroy Pitcher box score" do
    visit pitcher_box_score_url(@pitcher_box_score)
    click_on "Destroy this pitcher box score", match: :first

    assert_text "Pitcher box score was successfully destroyed"
  end
end
