require "test_helper"

class TeamPitcherStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_pitcher_stat = team_pitcher_stats(:one)
  end

  test "should get index" do
    get team_pitcher_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_team_pitcher_stat_url
    assert_response :success
  end

  test "should create team_pitcher_stat" do
    assert_difference("TeamPitcherStat.count") do
      post team_pitcher_stats_url, params: { team_pitcher_stat: { batters_faced: @team_pitcher_stat.batters_faced, doubles: @team_pitcher_stat.doubles, hit_by_pitches: @team_pitcher_stat.hit_by_pitches, home_runs: @team_pitcher_stat.home_runs, intent_walks: @team_pitcher_stat.intent_walks, num_hits: @team_pitcher_stat.num_hits, num_pitchers: @team_pitcher_stat.num_pitchers, pitcher_team: @team_pitcher_stat.pitcher_team, singles: @team_pitcher_stat.singles, strikeouts: @team_pitcher_stat.strikeouts, triples: @team_pitcher_stat.triples, walks: @team_pitcher_stat.walks, wild_pitches: @team_pitcher_stat.wild_pitches } }
    end

    assert_redirected_to team_pitcher_stat_url(TeamPitcherStat.last)
  end

  test "should show team_pitcher_stat" do
    get team_pitcher_stat_url(@team_pitcher_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_pitcher_stat_url(@team_pitcher_stat)
    assert_response :success
  end

  test "should update team_pitcher_stat" do
    patch team_pitcher_stat_url(@team_pitcher_stat), params: { team_pitcher_stat: { batters_faced: @team_pitcher_stat.batters_faced, doubles: @team_pitcher_stat.doubles, hit_by_pitches: @team_pitcher_stat.hit_by_pitches, home_runs: @team_pitcher_stat.home_runs, intent_walks: @team_pitcher_stat.intent_walks, num_hits: @team_pitcher_stat.num_hits, num_pitchers: @team_pitcher_stat.num_pitchers, pitcher_team: @team_pitcher_stat.pitcher_team, singles: @team_pitcher_stat.singles, strikeouts: @team_pitcher_stat.strikeouts, triples: @team_pitcher_stat.triples, walks: @team_pitcher_stat.walks, wild_pitches: @team_pitcher_stat.wild_pitches } }
    assert_redirected_to team_pitcher_stat_url(@team_pitcher_stat)
  end

  test "should destroy team_pitcher_stat" do
    assert_difference("TeamPitcherStat.count", -1) do
      delete team_pitcher_stat_url(@team_pitcher_stat)
    end

    assert_redirected_to team_pitcher_stats_url
  end
end
