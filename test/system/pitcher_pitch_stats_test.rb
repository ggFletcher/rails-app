require "application_system_test_case"

class PitcherPitchStatsTest < ApplicationSystemTestCase
  setup do
    @pitcher_pitch_stat = pitcher_pitch_stats(:one)
  end

  test "visiting the index" do
    visit pitcher_pitch_stats_url
    assert_selector "h1", text: "Pitcher pitch stats"
  end

  test "should create pitcher pitch stat" do
    visit pitcher_pitch_stats_url
    click_on "New pitcher pitch stat"

    fill_in "Avg hit launch angle", with: @pitcher_pitch_stat.avg_hit_launch_angle
    fill_in "Avg hit launch speed", with: @pitcher_pitch_stat.avg_hit_launch_speed
    fill_in "Avg speed", with: @pitcher_pitch_stat.avg_speed
    fill_in "Avg spin rate", with: @pitcher_pitch_stat.avg_spin_rate
    fill_in "Balls", with: @pitcher_pitch_stat.balls
    fill_in "Balls in dirt", with: @pitcher_pitch_stat.balls_in_dirt
    fill_in "Called strikes", with: @pitcher_pitch_stat.called_strikes
    fill_in "Fouls", with: @pitcher_pitch_stat.fouls
    fill_in "Hit by pitches", with: @pitcher_pitch_stat.hit_by_pitches
    fill_in "In play out", with: @pitcher_pitch_stat.in_play_out
    fill_in "In play runs", with: @pitcher_pitch_stat.in_play_runs
    fill_in "In play safe", with: @pitcher_pitch_stat.in_play_safe
    fill_in "Pitch type", with: @pitcher_pitch_stat.pitch_type
    fill_in "Pitcher name", with: @pitcher_pitch_stat.pitcher_name
    fill_in "Pitcher team", with: @pitcher_pitch_stat.pitcher_team
    fill_in "Put in play", with: @pitcher_pitch_stat.put_in_play
    fill_in "Strikes", with: @pitcher_pitch_stat.strikes
    fill_in "Swinging strikes", with: @pitcher_pitch_stat.swinging_strikes
    fill_in "Times thrown", with: @pitcher_pitch_stat.times_thrown
    fill_in "To lefty", with: @pitcher_pitch_stat.to_lefty
    fill_in "To righty", with: @pitcher_pitch_stat.to_righty
    click_on "Create Pitcher pitch stat"

    assert_text "Pitcher pitch stat was successfully created"
    click_on "Back"
  end

  test "should update Pitcher pitch stat" do
    visit pitcher_pitch_stat_url(@pitcher_pitch_stat)
    click_on "Edit this pitcher pitch stat", match: :first

    fill_in "Avg hit launch angle", with: @pitcher_pitch_stat.avg_hit_launch_angle
    fill_in "Avg hit launch speed", with: @pitcher_pitch_stat.avg_hit_launch_speed
    fill_in "Avg speed", with: @pitcher_pitch_stat.avg_speed
    fill_in "Avg spin rate", with: @pitcher_pitch_stat.avg_spin_rate
    fill_in "Balls", with: @pitcher_pitch_stat.balls
    fill_in "Balls in dirt", with: @pitcher_pitch_stat.balls_in_dirt
    fill_in "Called strikes", with: @pitcher_pitch_stat.called_strikes
    fill_in "Fouls", with: @pitcher_pitch_stat.fouls
    fill_in "Hit by pitches", with: @pitcher_pitch_stat.hit_by_pitches
    fill_in "In play out", with: @pitcher_pitch_stat.in_play_out
    fill_in "In play runs", with: @pitcher_pitch_stat.in_play_runs
    fill_in "In play safe", with: @pitcher_pitch_stat.in_play_safe
    fill_in "Pitch type", with: @pitcher_pitch_stat.pitch_type
    fill_in "Pitcher name", with: @pitcher_pitch_stat.pitcher_name
    fill_in "Pitcher team", with: @pitcher_pitch_stat.pitcher_team
    fill_in "Put in play", with: @pitcher_pitch_stat.put_in_play
    fill_in "Strikes", with: @pitcher_pitch_stat.strikes
    fill_in "Swinging strikes", with: @pitcher_pitch_stat.swinging_strikes
    fill_in "Times thrown", with: @pitcher_pitch_stat.times_thrown
    fill_in "To lefty", with: @pitcher_pitch_stat.to_lefty
    fill_in "To righty", with: @pitcher_pitch_stat.to_righty
    click_on "Update Pitcher pitch stat"

    assert_text "Pitcher pitch stat was successfully updated"
    click_on "Back"
  end

  test "should destroy Pitcher pitch stat" do
    visit pitcher_pitch_stat_url(@pitcher_pitch_stat)
    click_on "Destroy this pitcher pitch stat", match: :first

    assert_text "Pitcher pitch stat was successfully destroyed"
  end
end
