class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/auth/splitwise"
    mail(to: @user.email, subject: 'You have been to invited to a SuSu pool')
  end

end
