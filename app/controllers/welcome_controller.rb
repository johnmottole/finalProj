class WelcomeController < ApplicationController
before_filter :authorize
  def index
    @quotess = Quotes.where(:user => current_user.name).order('created_at DESC')
    @followercount = Follow.where(:following => current_user.name).count
    @followingcount = Follow.where(:follower => current_user.name).count

  end
  
  def destroy
      @quotess = Quotes.find(params[:id])
      @quotess.destroy
      
      redirect_to welcome_index_path
  end
  
end
