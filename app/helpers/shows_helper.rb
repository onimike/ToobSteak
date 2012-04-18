module ShowsHelper

  def sign_in_show(show)
    cookies.signed[:remember_show] = show.id
    self.current_show = show
  end

  def current_show=(show)
    @current_show = show
  end

  def current_show
    @current_show ||= remember_show
  end
  
  def current_show?(show)
    show == current_show
  end
  
  private
  
    def remember_show
      
      @show = Show.find(cookies.signed[:remember_show] || nil)
    end

end
