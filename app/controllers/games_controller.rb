class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
    @created = cookies[:created]
    @updated = cookies[:updated]
    @deleted = cookies[:deleted]
    @createdReview = cookies[:createdReview]
    @updatedReview = cookies[:updatedReview]
    @deletedReview = cookies[:deletedReview]

  end

  def search
    if params[:search].present?
      @games = Game.search(params[:search])
    else
      @games = Game.all
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @created = cookies[:created]
    @updated = cookies[:updated]
    @deleted = cookies[:deleted]
    @createdReview = cookies[:createdReview]
    @updatedReview = cookies[:updatedReview]
    @deletedReview = cookies[:deletedReview]
    @reviews = @game.reviews.order("created_at DESC")
    unless @reviews.present?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).present? ? @reviews.average(:rating).round(2) : 0
    end
  end


  # GET /games/new
  def new
    @game = current_user.games.build
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = current_user.games.build(game_params)

    respond_to do |format|
      if @game.save
        format.html {redirect_to @game, notice: 'Game was successfully added.'}
        format.json {render :show, status: :created, location: @game}
        cookies.permanent[:created] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
      else
        format.html {render :new}
        format.json {render json: @game.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html {redirect_to @game, notice: 'Game was successfully updated.'}
        format.json {render :show, status: :ok, location: @game}
        cookies.permanent[:updated] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
      else
        format.html {render :edit}
        format.json {render json: @game.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html {redirect_to games_url, notice: 'Game was successfully destroyed.'}
      format.json {head :no_content}
      cookies.permanent[:deleted] = Time.new.strftime("%Y-%m-%d %H:%M:%S")
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def game_params
    params.require(:game).permit(:Game_Title, :Release_Date, :Description, :Publisher, :image)
  end

end


# Singleton class
require 'singleton'
class AppVersion
  include Singleton
  # A setter that will store the version number
  def SetVersionNumber(version)
    @data = version
  end

  # A getter that will allow use to display the data
  def GetData
    return @data
  end

end

# Setting version number
AppVersion.instance().SetVersionNumber("1.0.0")
