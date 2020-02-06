class Api::V1::UserAppsController < ApplicationController

    def index 
        userApps = UserApp.all
        render json: UserAppSerializer.new(userApps)
    end 

    def create 
        @userApp = UserApp.create(user_app_params)

        render json: @userApp, except: [:updated_at]
        # UserMailer.with(user: @userApp).thank_you_email.deliver_later


        # respond_to? do |format|
        #     if @userApp.save
        #       # Tell the UserMailer to send a welcome email after save
        #       UserMailer.with(user: @userApp).thank_you_email.deliver_later
       
        #       format.html { redirect_to(@userApp, notice: 'User was successfully created.') }
        #       format.json { render json: @userApp, status: :created, location: @user }
        #     else
        #       format.html { render action: 'new' }
        #       format.json { render json: @userApp.errors, status: :unprocessable_entity }
        #     end
        #   end


        #     if @userApp.save
        #         UserMailer.with(user: @userApp.attributes.user).thank_you_email.deliver_later
        #     end

        # render json: @userApp, except: [:updated_at]
    end 

end

private

def user_app_params
    params.require(:user_app).permit(:mini_cl, :job_id, :user_id)
end
