require 'tvdb_party' #documentation: http://rubydoc.info/gems/tvdb_party/0.6.2/frames

class ShowsController < ApplicationController
	
	def show
		@show = Show.find(params[:id])
	end
	
	def new
		@show = Show.new
		@title = "New show"
	end
	
	def create
		tvdb = TvdbParty::Search.new("F6EA8F2FD26C08BF")
		@show = Show.new(params[:show])
		@results = tvdb.search(@show.name)
		
		@results.each_index do |res|
			if @results[res]["SeriesName"].upcase.split == @show.name.upcase.split #This matches the show name exactly
				series = tvdb.get_series_by_id(@results[res]["seriesid"])
				@show.name = series.name()
				@show.description = series.overview()
				@show.network = series.network()
				@show.genre = series.genres()[0] #Just gets the first genre of possibly many
				@show.minutes = series.runtime() #Running time of an episode in minutes
				@show.rating = series.rating()
				@show.banner = @results[res]["banner"] #A link to an image hosten on thetvdb.com
			
				if @show.save #only saves if there are no duplicates
					redirect_to @show
					return #This needs to be here to prevent a rails error, so says Rails
				else
					@results.delete_at(res) #remove from results array so we don't suggest the same show on the error page
				end
			end
		end
		
		render 'error'
		
	end
end
