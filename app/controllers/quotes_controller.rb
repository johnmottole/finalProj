class QuotesController < ApplicationController
    def index
        @quotess = Quotes.all
    end
    def show
        @quote = Quotes.find(params[:id])
    end
    def new
        @currentUser ||= User.find(session[:user_id]).name if session[:user_id]
    end
    def create
        @quote = Quotes.new(quote_params)
        @quote.save
        redirect_to @quote
    end
    private
    def quote_params
        params.require(:quotes).permit(:words, :author, :user)
    end
end


