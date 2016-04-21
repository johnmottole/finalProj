class QuotesController < ApplicationController
    def index
        @quotess = Quotes.all
    end
    def show
        @quote = Quotes.find(params[:id])
    end
    def new
        @currentUser = "johnm123"
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


