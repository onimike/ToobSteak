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

		if Show.is_show?(@show.name) && @show.save
			#need to change Show.is_show to return the show's id instead of a boolean
			#because we can't fill the current show's details in the model show.rb
			redirect_to @show
		else
			render 'new'
		end
		
#		if @show.save
#			redirect_to @show
#		else
#			render 'new'
#		end
	end

end
