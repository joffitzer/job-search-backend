class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :bootcamp, :category, :grad_month, :grad_year
end

# trying without portfolio items
# attributes :first_name, :last_name, :email, :bootcamp, :category, :grad_month, :grad_year, :portfolio_items
