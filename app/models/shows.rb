class Shows < ActiveRecord::Base
	attr_accessible :name
	
	validates :name,  :presence => true,
					  :uniqueness => true
	
	def self.authenticate(name)
		results = tvdb.search(name)
		#Need to add a for loop to check results[0]["SeriesName"] to check for matches, etc.
	end
					  
end
