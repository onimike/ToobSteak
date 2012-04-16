require 'tvdb_party'

class Show < ActiveRecord::Base
	attr_accessible :name
	
	validates :name,  :presence => true,
					  :uniqueness => true			

					  
	def fill(seriesid)
		tvdb = TvdbParty::Search.new("F6EA8F2FD26C08BF")
		series = tvdb.get_series_by_id(seriesid)
		update_attribute :network, series.network()
		update_attribute :genre, series.genres()[0] #Just gets the first genre of possibly many
		update_attribute :minutes, series.runtime() #Running time of an episode in minutes
		update_attribute :rating, series.rating()
	end
end
