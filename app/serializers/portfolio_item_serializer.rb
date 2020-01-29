class PortfolioItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :blurb, :git_url, :user
end
