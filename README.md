Hello!

Prerequisites - 
I wrote a python script, stats_parse.py, to parse the given csv, splitting off the info I thought to grab.
I did also edit the base csv a bit in excel, grabbing the pitcher's team using half inning and home and 
away team values, so none of this would work with a completely new file, which I realize is a bit of an
issue.
I exported my conda environment yaml file to the project directory, it's a bit bloated cause it's
the environment I use for my current graduate school class.

stars_parse.py take a bit to run, and generates 3 csv files -
df_pitcher_box_scores.csv 
df_pitcher_pitch_stats.csv
df_team_pitcher_stats.csv

For df_team_pitcher_stats, after running stats_parse, you need to replace the first few lines of the csv 
with the correct column names, df.groupby messes stuff up, so paste this single line into the top to set 
column names correctly for the rake tasks - 
pitcher_team,num_pitchers,batters_faced,num_hits,singles,doubles,triples,home_runs,strikeouts,walks,intent_walks,hit_by_pitches,wild_pitches

I then wrote some rake tasks to import the data into the Ruby application
rake import:pitcher_box_scores
rake import:pitcher_pitch_stats
rake import:team_pitcher_stats

once all that's done the app should be ready to go, hosted as normal with rails s.

To be honest the app is very simple, I was tied up with personal, professional, and academic obligations
for a majority of the week, so this was really about 10 hours of work total, with 2 hours dedicated to
trying to troubleshoot my old Ruby on Rails installation from college, and then ending up just wiping
and reinstalling it alltogether! That leaves about 8 hours of actual work, most of which was shaking off
the rust on Ruby, which I haven't used in about 5 years, as well as web development in general,
it's been about 2 years since I worked a web-dev project at Lockheed.

I had a lot of fun building it out, and can promise much higher quality work if/when I could focus on it
full time!

I would have liked to work a bit more on - 
The AJAX implementation I started, to stop the pages from reloading with every option change/search.
Expanding the search function to include more than just pitcher_name or pitcher_team.
The overall UI, it's pretty plain, probably could have tried to add some Rockies logos etc.
I was just remembering some web dev best practices and would have liked to be able to clean up the
project architecture a bit.
I would've liked to make pages for each individual team showing stats of each pitcher for the team.
There are some leftover routes that rails creates automatically that could be used to screw everything up,
so I would've liked to clean those up.
I missed calculating a few stats that I think would have been cool to take a look at, but I was in a rush
to get something up and running.
As I'm writing this I realized I didn't create a season total page for each pitcher, which I will also chalk
up to having a very limited amount of time to work on it.
