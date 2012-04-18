class MicropostsController < ApplicationController
  before_filter :authenticate

  def create
    @micropost  = current_show.microposts.build(:content => params[:micropost][:content], :user_id => current_user.id)
    if @micropost.save
      flash[:success] = "Micropost created! Content: #{params[:micropost][:content]}"
      redirect_to current_show
    else
      flash[:error] = "Micropost NOT created!"
      redirect_to current_show
    end
  end

end
