class ShowsController < ApplicationController
	
	def show
		@newshow = Shows.find(params[:id])
	end
	
	def new
		@newshow = Shows.new
		@title = "New show"
	end

end
