class Employer < ApplicationRecord
    has_many :jobs
    has_secure_password
end
