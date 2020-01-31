class Job < ApplicationRecord
    belongs_to :employer
    has_many :user_apps
end
