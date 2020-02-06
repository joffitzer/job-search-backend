class UserMailer < ApplicationMailer

    default from: 'notifications@launchpad.com'
 
  def thank_you_email(user)
    @userApp = params[:user]
    @url  = 'http://localhost30001/myapps'
    mail(to: @userApp.user.email, subject: 'Thanks for applying')
  end

end
