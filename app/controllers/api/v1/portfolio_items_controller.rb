class Api::V1::PortfolioItemsController < ApplicationController

    def index 
        portfolioItems = PortfolioItem.all
        render json: PortfolioItemSerializer.new(portfolioItems)
    end 

    def create 
        portfolioItem = PortfolioItem.create(portfolio_item_params)
        render json: portfolioItem, except: [:created_at, :updated_at]
    end 

    def update 
        portfolioItem = PortfolioItem.find(params[:id])
        portfolioItem.update(portfolio_item_params)
        render json: portfolioItem, except: [:created_at, :updated_at]
    end 

    def destroy
        PortfolioItem.destroy(params[:id])
    end 

end

private

def portfolio_item_params
    params.require(:portfolio_item).permit(:title, :blurb, :git_url, :user_id)
end