class ReviewObserver < ActiveRecord::Observer
  def after_create(user)
    @user = user
    UserMailer.new_review_added(@user = "vlad.vasiljevs97@gmail.com").deliver
  end
end
