class Api::V1::EmployersController < ApplicationController

    def index 
        employers = Employer.all
        render json: EmployerSerializer.new(employers)
    end 

    def create 
        employer = Employer.create(employer_params)
        token = JWT.encode({employer: employer.id}, "secret")
        render json: {employer: employer, token: token}
    end 

    private
    def employer_params
        params.require(:employer).permit(:email, :password, :name, :description, :logo, :industry)
    end 

end
