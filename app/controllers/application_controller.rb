class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def authorize
      redirect_to '/login' unless current_user
  end
  
  def show_time(q)
      if (q.created_at - (4*60*60)).hour == 0
          isPM = false
          timeShow = "12:"
        elsif (q.created_at - (4*60*60)).hour > 12
          timeShow = (((q.created_at - (4*60*60)).hour) - 12).to_s + ":"
        elsif (q.created_at - (4*60*60)).hour == 12
          timeShow = "12:"
          isPM = true
        else
          timeShow = ((q.created_at - (4*60*60)).hour).to_s + ":"
          isPM = false
      end
      
      
      
      if (q.created_at - (4*60*60)).min < 10
          timeShow = timeShow + "0"
      end
      timeShow = timeShow + (q.created_at - (4*60*60)).min.to_s
      
      
      
      if isPM == false
          timeShow = timeShow + " AM"
      else
          timeShow = timeShow + " PM"
      end
  end
  helper_method :show_time
end
