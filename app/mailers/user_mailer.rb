class UserMailer < ActionMailer::Base
  default from: "vlad.vasiljevs97@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://myvideogames.herokuapp.com"
    mail(to: @user, subject: "Welcome to My Awesome Site")
  end
end