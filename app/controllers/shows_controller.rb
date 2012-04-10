class ShowsController < ApplicationController

	def new
		@title = "New show"
		@show = Shows.new
	end
	
	def create
		@show = params[:name]
	end
	
end
