import numpy as np
import pandas as pd
from datetime import datetime
import math

OUTS = ['caught_stealing_2b', 'caught_stealing_3b', 'field_out', 'fielders_choice', 'fielders_choice_out', 'force_out', 
        'pickoff_caught_stealing_2b', 'pickoff_caught_stealing_3b', 'sac_bunt', 'sac_fly', 'strikeout']
DOUBLE_PLAYS = ['double_play', 'grounded_into_double_play', 'sac_fly_double_play', 'strikeout_double_play']


df_stats = pd.read_csv('rockies_full_stack_developer_project_data.csv')
# df_stats = df_stats.fillna(0)

pitcher_box_scores = []
for unique_pitcher in df_stats['pitcher_name'].unique():
    df_temp = df_stats[df_stats['pitcher_name'] == unique_pitcher]
    pitcher_team = df_temp.iloc[0]['pitcher_team']
    for game in df_temp['official_game_date'].unique():
        datetime_test = datetime.strptime(game, "%m/%d/%Y")
        date = datetime_test.date()
        outcomes = []
        official_game_date = game
        df_game_temp = df_temp[df_temp['official_game_date'] == game]

        if pitcher_team == df_game_temp.iloc[0]['home_team_name']:
            opposing_team = df_game_temp.iloc[0]['away_team_name']
            home_away = 'home'
        else:
            opposing_team = df_game_temp.iloc[0]['home_team_name']
            home_away = 'away'
        venue = df_game_temp.iloc[0]['venue_name']
        num_batters = 0
        outs = 0
        for at_bat_index in df_game_temp['at_bat_index'].unique():
            outcome = (df_game_temp[df_game_temp['at_bat_index'] == at_bat_index].iloc[0]['play_event_type'])
            outcomes.append(outcome)
            num_batters += 1
            if outcome in DOUBLE_PLAYS:
                outs += 2
            elif outcome in OUTS:
                outs += 1
        
        outcomes = np.array(outcomes)
        singles = np.count_nonzero(outcomes == 'single')
        doubles = np.count_nonzero(outcomes == 'double')
        triples = np.count_nonzero(outcomes == 'triple')
        homeruns = np.count_nonzero(outcomes == 'home_run')
        num_hits = singles+doubles+triples+homeruns
        strikeouts = np.count_nonzero(outcomes == 'strikeout')
        walks = np.count_nonzero(outcomes == 'walk')
        intent_walks = np.count_nonzero(outcomes == 'intent_walk')
        hit_by_pitches = np.count_nonzero(outcomes == 'hit_by_pitch')
        wild_pitches = np.count_nonzero(outcomes == 'wild_pitch')
        batters_faced = num_batters
        innings_pitched = float('{}.{}'.format(math.trunc(outs/3), outs%3))

        pitcher_box_score = {  
            'official_game_date': str(date), 
            'pitcher_name': unique_pitcher, 
            'pitcher_team': pitcher_team,
            'opposing_team': opposing_team,
            'venue': venue,
            'at': home_away,
            'innings_pitched': innings_pitched,
            'batters_faced': batters_faced,
            'num_hits': num_hits,
            'singles': singles,
            'doubles': doubles,
            'triples': triples,
            'home_runs': homeruns,
            'strikeouts': strikeouts,
            'walks': walks,
            'intent_walks': intent_walks,
            'hit_by_pitches': hit_by_pitches,
            'wild_pitches': wild_pitches
            }
        pitcher_box_scores.append(pitcher_box_score)

df_pitcher_box_scores = pd.DataFrame(pitcher_box_scores, columns=['official_game_date','pitcher_name','pitcher_team',
            'opposing_team','venue','at','innings_pitched','batters_faced','num_hits','singles','doubles','triples','home_runs',
            'strikeouts','walks','intent_walks','hit_by_pitches','wild_pitches'])
df_pitcher_box_scores = df_pitcher_box_scores.sort_values(by=['official_game_date'])
print(df_pitcher_box_scores.dtypes)
df_pitcher_box_scores.to_csv('df_pitcher_box_scores.csv', index=False)

df_team_pitcher_stats = df_pitcher_box_scores.groupby(by=['pitcher_team']).agg({'pitcher_name': {'nunique'},
            'batters_faced':{'sum'}, 'num_hits':{'sum'}, 'singles':{'sum'}, 'doubles':{'sum'}, 'triples':{'sum'}, 'home_runs':{'sum'},
            'strikeouts': {'sum'}, 'walks': {'sum'}, 'intent_walks': {'sum'}, 'hit_by_pitches': {'sum'}, 'wild_pitches': {'sum'}, })
# df_team_pitcher_stats.columns=['pitcher_team','num_pitchers','batters_faced','num_hits',
#             'singles','doubles','triples','home_runs','strikeouts','walks','intent_walks',
#             'hit_by_pitches','wild_pitches']
df_team_pitcher_stats.to_csv('df_team_pitcher_stats.csv', index=True)

pitcher_pitch_stats = []
for unique_pitcher in df_stats['pitcher_name'].unique():
    df_temp = df_stats[df_stats['pitcher_name'] == unique_pitcher]
    pitcher_team = df_temp.iloc[0]['pitcher_team']
    for unique_pitch in df_temp['pitch_type_description'].unique():
        df_unique_pitch_temp = df_temp[df_temp['pitch_type_description'] == unique_pitch]
        times_thrown = len(df_unique_pitch_temp)
        strikes = df_unique_pitch_temp['is_strike'].sum()
        balls = df_unique_pitch_temp['is_ball'].sum()
        put_in_play = df_unique_pitch_temp['is_in_play'].sum()
        to_righty = len(df_unique_pitch_temp[df_unique_pitch_temp['bat_side'] == 'Right'])
        to_lefty = len(df_unique_pitch_temp[df_unique_pitch_temp['bat_side'] == 'Left'])
        avg_speed = df_unique_pitch_temp['pitch_release_speed'].mean()
        avg_spin_rate = df_unique_pitch_temp['pitch_release_spin_rate'].mean()
        avg_hit_launch_speed = df_unique_pitch_temp['hit_launch_speed'].mean()
        avg_hit_launch_angle = df_unique_pitch_temp['hit_launch_angle'].mean()
        called_strikes = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'C'])
        swinging_strikes = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'S'])
        swinging_strikes += len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'W'])
        fouls = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'F'])
        balls_in_dirt = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == '*B'])
        in_play_out = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'X'])
        hits = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'D'])
        in_play_runs = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'E'])
        hit_by_pitches = len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'H'])
        fouls += len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'L'])
        fouls += len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'O'])
        fouls += len(df_unique_pitch_temp[df_unique_pitch_temp['call_code'] == 'T'])

        pitcher_pitch_stat = {
            'pitcher_name': unique_pitcher,
            'pitcher_team': pitcher_team,
            'pitch_type': unique_pitch,
            'times_thrown': times_thrown,
            'strikes': strikes,
            'balls': balls,
            'put_in_play': put_in_play,
            'to_righty': to_righty,
            'to_lefty': to_lefty,
            'avg_speed': avg_speed,
            'avg_spin_rate': avg_spin_rate,
            'avg_hit_launch_speed': avg_hit_launch_speed,
            'avg_hit_launch_angle': avg_hit_launch_angle,
            'called_strikes': called_strikes,
            'swinging_strikes': swinging_strikes,
            'fouls': fouls,
            'balls_in_dirt': balls_in_dirt,
            'in_play_out': in_play_out,
            'in_play_safe': hits,
            'in_play_runs': in_play_runs,
            'hit_by_pitches': hit_by_pitches,
        }
        pitcher_pitch_stats.append(pitcher_pitch_stat)
df_pitcher_pitch_stats = pd.DataFrame(pitcher_pitch_stats, columns=['pitcher_name','pitcher_team','pitch_type','times_thrown',
            'strikes','balls','put_in_play','to_righty','to_lefty','called_strikes','swinging_strikes','fouls','balls_in_dirt',
            'in_play_out','in_play_safe','in_play_runs','hit_by_pitches','avg_speed','avg_spin_rate','avg_hit_launch_speed',
            'avg_hit_launch_angle'])
df_pitcher_pitch_stats.to_csv('df_pitcher_pitch_stats.csv', index=False)
