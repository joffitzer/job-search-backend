class Api::V1::PortfolioItemsController < ApplicationController

    def index 
        portfolioItems = PortfolioItem.all
        render json: PortfolioItemSerializer.new(portfolioItems)
    end 

end
