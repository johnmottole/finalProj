class LikesController < ApplicationController
    def new
        followingg = Follow.where(:follower => current_user.name)
        followingname = []
        followingg.each do |f|
            followingname.push(f.following)
        end
        @thequotes = Quotes.where(:user => followingname).order('created_at DESC')
        
    end
end
