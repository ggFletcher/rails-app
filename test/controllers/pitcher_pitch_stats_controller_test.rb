require "test_helper"

class PitcherPitchStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pitcher_pitch_stat = pitcher_pitch_stats(:one)
  end

  test "should get index" do
    get pitcher_pitch_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_pitcher_pitch_stat_url
    assert_response :success
  end

  test "should create pitcher_pitch_stat" do
    assert_difference("PitcherPitchStat.count") do
      post pitcher_pitch_stats_url, params: { pitcher_pitch_stat: { avg_hit_launch_angle: @pitcher_pitch_stat.avg_hit_launch_angle, avg_hit_launch_speed: @pitcher_pitch_stat.avg_hit_launch_speed, avg_speed: @pitcher_pitch_stat.avg_speed, avg_spin_rate: @pitcher_pitch_stat.avg_spin_rate, balls: @pitcher_pitch_stat.balls, balls_in_dirt: @pitcher_pitch_stat.balls_in_dirt, called_strikes: @pitcher_pitch_stat.called_strikes, fouls: @pitcher_pitch_stat.fouls, hit_by_pitches: @pitcher_pitch_stat.hit_by_pitches, in_play_out: @pitcher_pitch_stat.in_play_out, in_play_runs: @pitcher_pitch_stat.in_play_runs, in_play_safe: @pitcher_pitch_stat.in_play_safe, pitch_type: @pitcher_pitch_stat.pitch_type, pitcher_name: @pitcher_pitch_stat.pitcher_name, pitcher_team: @pitcher_pitch_stat.pitcher_team, put_in_play: @pitcher_pitch_stat.put_in_play, strikes: @pitcher_pitch_stat.strikes, swinging_strikes: @pitcher_pitch_stat.swinging_strikes, times_thrown: @pitcher_pitch_stat.times_thrown, to_lefty: @pitcher_pitch_stat.to_lefty, to_righty: @pitcher_pitch_stat.to_righty } }
    end

    assert_redirected_to pitcher_pitch_stat_url(PitcherPitchStat.last)
  end

  test "should show pitcher_pitch_stat" do
    get pitcher_pitch_stat_url(@pitcher_pitch_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_pitcher_pitch_stat_url(@pitcher_pitch_stat)
    assert_response :success
  end

  test "should update pitcher_pitch_stat" do
    patch pitcher_pitch_stat_url(@pitcher_pitch_stat), params: { pitcher_pitch_stat: { avg_hit_launch_angle: @pitcher_pitch_stat.avg_hit_launch_angle, avg_hit_launch_speed: @pitcher_pitch_stat.avg_hit_launch_speed, avg_speed: @pitcher_pitch_stat.avg_speed, avg_spin_rate: @pitcher_pitch_stat.avg_spin_rate, balls: @pitcher_pitch_stat.balls, balls_in_dirt: @pitcher_pitch_stat.balls_in_dirt, called_strikes: @pitcher_pitch_stat.called_strikes, fouls: @pitcher_pitch_stat.fouls, hit_by_pitches: @pitcher_pitch_stat.hit_by_pitches, in_play_out: @pitcher_pitch_stat.in_play_out, in_play_runs: @pitcher_pitch_stat.in_play_runs, in_play_safe: @pitcher_pitch_stat.in_play_safe, pitch_type: @pitcher_pitch_stat.pitch_type, pitcher_name: @pitcher_pitch_stat.pitcher_name, pitcher_team: @pitcher_pitch_stat.pitcher_team, put_in_play: @pitcher_pitch_stat.put_in_play, strikes: @pitcher_pitch_stat.strikes, swinging_strikes: @pitcher_pitch_stat.swinging_strikes, times_thrown: @pitcher_pitch_stat.times_thrown, to_lefty: @pitcher_pitch_stat.to_lefty, to_righty: @pitcher_pitch_stat.to_righty } }
    assert_redirected_to pitcher_pitch_stat_url(@pitcher_pitch_stat)
  end

  test "should destroy pitcher_pitch_stat" do
    assert_difference("PitcherPitchStat.count", -1) do
      delete pitcher_pitch_stat_url(@pitcher_pitch_stat)
    end

    assert_redirected_to pitcher_pitch_stats_url
  end
end
