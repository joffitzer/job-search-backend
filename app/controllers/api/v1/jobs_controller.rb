class Api::V1::JobsController < ApplicationController

    def index 
        jobs = Job.all
        render json: JobSerializer.new(jobs)
    end 

    def create 
        job = Job.create(job_params)
        render json: job, except: [:created_at, :updated_at]
    end 

    def destroy
        Job.destroy(params[:id])
    end 

    private
    def job_params
        params.require(:job).permit(:employer_id, :title, :location, :category, :summary, :description, :sal_range_low, :sal_range_high, :active)
    end 

end
