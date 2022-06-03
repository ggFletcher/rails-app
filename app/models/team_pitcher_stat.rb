class TeamPitcherStat < ApplicationRecord
	def self.search(search)
	  if search
	    where('pitcher_team LIKE ?', "%#{search}%")
	  else
	    unscoped
	  end
	end
end
