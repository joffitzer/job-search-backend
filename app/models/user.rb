class User < ApplicationRecord
    has_secure_password
    has_many :portfolio_items
    has_many :user_apps
end
