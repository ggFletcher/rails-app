require "application_system_test_case"

class TeamPitcherStatsTest < ApplicationSystemTestCase
  setup do
    @team_pitcher_stat = team_pitcher_stats(:one)
  end

  test "visiting the index" do
    visit team_pitcher_stats_url
    assert_selector "h1", text: "Team pitcher stats"
  end

  test "should create team pitcher stat" do
    visit team_pitcher_stats_url
    click_on "New team pitcher stat"

    fill_in "Batters faced", with: @team_pitcher_stat.batters_faced
    fill_in "Doubles", with: @team_pitcher_stat.doubles
    fill_in "Hit by pitches", with: @team_pitcher_stat.hit_by_pitches
    fill_in "Home runs", with: @team_pitcher_stat.home_runs
    fill_in "Intent walks", with: @team_pitcher_stat.intent_walks
    fill_in "Num hits", with: @team_pitcher_stat.num_hits
    fill_in "Num pitchers", with: @team_pitcher_stat.num_pitchers
    fill_in "Pitcher team", with: @team_pitcher_stat.pitcher_team
    fill_in "Singles", with: @team_pitcher_stat.singles
    fill_in "Strikeouts", with: @team_pitcher_stat.strikeouts
    fill_in "Triples", with: @team_pitcher_stat.triples
    fill_in "Walks", with: @team_pitcher_stat.walks
    fill_in "Wild pitches", with: @team_pitcher_stat.wild_pitches
    click_on "Create Team pitcher stat"

    assert_text "Team pitcher stat was successfully created"
    click_on "Back"
  end

  test "should update Team pitcher stat" do
    visit team_pitcher_stat_url(@team_pitcher_stat)
    click_on "Edit this team pitcher stat", match: :first

    fill_in "Batters faced", with: @team_pitcher_stat.batters_faced
    fill_in "Doubles", with: @team_pitcher_stat.doubles
    fill_in "Hit by pitches", with: @team_pitcher_stat.hit_by_pitches
    fill_in "Home runs", with: @team_pitcher_stat.home_runs
    fill_in "Intent walks", with: @team_pitcher_stat.intent_walks
    fill_in "Num hits", with: @team_pitcher_stat.num_hits
    fill_in "Num pitchers", with: @team_pitcher_stat.num_pitchers
    fill_in "Pitcher team", with: @team_pitcher_stat.pitcher_team
    fill_in "Singles", with: @team_pitcher_stat.singles
    fill_in "Strikeouts", with: @team_pitcher_stat.strikeouts
    fill_in "Triples", with: @team_pitcher_stat.triples
    fill_in "Walks", with: @team_pitcher_stat.walks
    fill_in "Wild pitches", with: @team_pitcher_stat.wild_pitches
    click_on "Update Team pitcher stat"

    assert_text "Team pitcher stat was successfully updated"
    click_on "Back"
  end

  test "should destroy Team pitcher stat" do
    visit team_pitcher_stat_url(@team_pitcher_stat)
    click_on "Destroy this team pitcher stat", match: :first

    assert_text "Team pitcher stat was successfully destroyed"
  end
end
