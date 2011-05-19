class UserMailer < ActionMailer::Base
  default :from => "crazytrip@heroku.com"
  def registration_confirmation(user)  
    @user = user
    mail(:to => @user.email, :subject => "Welcome to Crazytrip")  
  end  
end
