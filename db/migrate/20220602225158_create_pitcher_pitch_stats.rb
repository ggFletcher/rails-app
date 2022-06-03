class CreatePitcherPitchStats < ActiveRecord::Migration[7.0]
  def change
    create_table :pitcher_pitch_stats do |t|
      t.string :pitcher_name
      t.string :pitcher_team
      t.string :pitch_type
      t.integer :times_thrown
      t.integer :strikes
      t.integer :balls
      t.integer :put_in_play
      t.integer :to_righty
      t.integer :to_lefty
      t.integer :called_strikes
      t.integer :swinging_strikes
      t.integer :fouls
      t.integer :balls_in_dirt
      t.integer :in_play_out
      t.integer :in_play_safe
      t.integer :in_play_runs
      t.integer :hit_by_pitches
      t.float :avg_speed
      t.float :avg_spin_rate
      t.float :avg_hit_launch_speed
      t.float :avg_hit_launch_angle

      t.timestamps
    end
  end
end
