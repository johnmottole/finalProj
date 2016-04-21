class WelcomeController < ApplicationController
  def index
    @quotess =  Quotes.order('created_at DESC')
  end
  
  #def show_time(q)
  #    {
  #       isPM = false
  ##         timeShow = "12:"
  #      elsif q.created_at - (4*60*60)).hour > 12
  #         timeShow = ((q.created_at - (4*60*60)).hour) - 12).to_s + ":"
  ##       elsif q.created_at - (4*60*60)).hour == 12
  #        timeShow = "12:"
  #         isPM = true
  #       else
  #         timeShow = ((q.created_at - (4*60*60)).hour).to_s + ":"
  #       end
  #
  #       if q.created_at - (4*60*60)).min < 10
  #           timeShow = timeShow + "0"
  #       end
  #       timeShow = timeShow + + q.created_at - (4*60*60)).min
          
          #       if isPM = false
          #            timeShow = timeShow + "AM"
          # else
          #  timeShow = timeShow + "PM"
          # end
          
          #timeShow
              
              #}
              # end
      
end
