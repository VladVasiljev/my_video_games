class UserMailer < ActionMailer::Base
  default from: "123hello2020@gmail.com"

  def new_review_added(user,gameName,commentReview)
    @user = user
    @gameName = gameName
    @commentReview = commentReview
    @url = "http://myvideogames.herokuapp.com"
    mail(to: @user, subject: "New Review")
  end
end