class Api::V1::JobsController < ApplicationController

    def index 
        jobs = Job.all
        render json: JobSerializer.new(jobs)
    end 

end
