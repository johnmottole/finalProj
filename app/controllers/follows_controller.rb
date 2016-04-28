class FollowsController < ApplicationController
    def new
        @currentUser ||= User.find(session[:user_id]).name if session[:user_id]
    end
    def show
        @follow = Follow.find(params[:id])
    end
    def create
        @follow = Follow.new(follow_params)
        @follow.save
        redirect_to @follow
    end
    private
    def follow_params
        params.require(:follows).permit(:follower, :following)
    end
end
