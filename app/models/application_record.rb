class ApplicationRecord < ActiveRecord::Base
	primary_abstract_class
	
	def self.search(search)
	  if search
	    where('pitcher_name LIKE ?', "%#{search}%")
	  else
	  	unscoped
	  end
	end
end
