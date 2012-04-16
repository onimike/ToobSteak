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
		@seriesid = ""
		
		@results.each_index do |res|
			if @results[res]["SeriesName"].upcase == @show.name.upcase #This matches the show name exactly

				@show.name = @results[res]["SeriesName"]
				@show.description = @results[res]["Overview"]
				@show.banner = @results[res]["banner"]
				@show.seriesid = @results[res]["seriesid"]
				
				if @show.save #only saves if there are no duplicates
#					@show.delay.fill @results[res]["seriesid"] #this only works if you have a computer doing rake jobs:work
					@show.fill @show.seriesid
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
