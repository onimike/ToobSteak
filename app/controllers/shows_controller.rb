class ShowsController < ApplicationController
	
	def show
		@show = Show.find(params[:id])
	end
	
	def new
		@show = Show.new
		@title = "New show"
	end
	
	def create
		@show = Show.new(params[:show])
		#check if it's a real show here, before @show.save!
		if @show.save
			redirect_to @show
		else
			render 'new'
		end
	end

end
