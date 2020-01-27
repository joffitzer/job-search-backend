class Api::V1::EmployersController < ApplicationController

    def index 
        employers = Employer.all
        render json: employers, except: [:created_at, :updated_at]
    end 

end
