
require 'tvdb_party' #documentation: http://rubydoc.info/gems/tvdb_party/0.6.2/frames

class Show < ActiveRecord::Base
	attr_accessible :name
	
	validates :name,  :presence => true,
					  :uniqueness => true
	
	def self.is_show?(name)
		tvdb = TvdbParty::Search.new("F6EA8F2FD26C08BF")
		results = tvdb.search(name)
		return nil if results[0].nil?
		
		found = false
		
		results.each_index do |res|

			if results[res]["SeriesName"].include? name.capitalize
		#		need to change this function to return results[res]["seriesid"], because all the lines below this don't work in the model
		#		series = tvdb.get_series_by_id(results[res]["seriesid"])
		#		@show.name = series.name()
		#		@show.description = series.overview()
		#		@show.language = series.language()
		#		@show.network = series.network()
		#		@show.genre = series.genres()[0]
		#		@show.minutes = series.runtime()
		#		@show.rating = series.rating()
				
				return true
			end
		end
		
		return false if found = false
		#Need to add a for loop to check results[0]["SeriesName"] to check for matches, etc.
	end
					  
end
