class Api::V1::PortfolioItemsController < ApplicationController

    def index 
        portfolioItems = PortfolioItem.all
        render json: PortfolioItemSerializer.new(portfolioItems)
    end 

    def create 
        portfolioItem = PortfolioItem.create(portfolio_item_params)
        render json: portfolioItem, except: [:created_at, :updated_at]
    end 

end

private

def portfolio_item_params
    params.require(:portfolio_item).permit(:title, :blurb, :git_url, :user_id)
end

# def create 
#     portfolioItem = PortfolioItem.create(user: {id: params[:user].id, first_name: params[:user].attributes.first_name, last_name: params[:user].attributes.last_name, email: params[:user].attributes.email, bootcamp: params[:user].attributes.bootcamp, category: params[:user].attributes.category, grad_month: params[:user].attributes.grad_month, grad_year: params[:user].attributes.grad_year})
#     render json: portfolioItem, except: [:created_at, :updated_at]
# end 

# didn't work

# def portfolio_item_params
#     params.permit(:title, :blurb, :git_url, :user)
# end

# def portfolio_item_params
#     params.permit(:title, :blurb, :git_url, user: {:first_name, :last_name, :email, :bootcamp, :category, :grad_month, :grad_year})
# end