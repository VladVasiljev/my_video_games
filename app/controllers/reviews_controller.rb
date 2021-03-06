class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! #Person leaving a review has to be a user(Logged in)
  before_action :set_game


  # GET /reviews/new
  def new
    @review = Review.new
    @created = cookies[:created]
    @updated = cookies[:updated]
    @deleted = cookies[:deleted]
    @createdReview = cookies[:createdReview]
    @updatedReview = cookies[:updatedReview]
    @deletedReview = cookies[:deletedReview]
  end

  # GET /reviews/1/edit
  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.game_id = @game.id


    if @review.save
      redirect_to @game
      cookies.permanent[:createdReview] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
    else
      render 'new'
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html {redirect_to @game, notice: 'Review was successfully updated.'}
        format.json {render :show, status: :ok}
        cookies.permanent[:updatedReview] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
      else
        format.html {render :edit}
        format.json {render json: @review.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html {redirect_to @game, notice: 'Your review has been deleted.'}
      format.json {head :no_content}
      cookies.permanent[:deletedReview] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:rating, :comment, :hours_played)
  end
end



