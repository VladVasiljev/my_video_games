class GameurlsController < ApplicationController
  before_action :set_gameurl, only: [:show, :edit, :update, :destroy]

  # GET /gameurls
  # GET /gameurls.json
  def index
    @gameurls = Gameurl.all
  end
  def validateurl
    @input1 = params[:search_string]
    @result = GetGame.getGame(@input1.to_s)
  end

  # GET /gameurls/1
  # GET /gameurls/1.json
  def show
  end

  # GET /gameurls/new
  def new
    @gameurl = Gameurl.new
  end

  # GET /gameurls/1/edit
  def edit
  end

  # POST /gameurls
  # POST /gameurls.json
  def create
    @gameurl = Gameurl.new(gameurl_params)

    respond_to do |format|
      if @gameurl.save
        format.html { redirect_to @gameurl, notice: 'Gameurl was successfully created.' }
        format.json { render :show, status: :created, location: @gameurl }
      else
        format.html { render :new }
        format.json { render json: @gameurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameurls/1
  # PATCH/PUT /gameurls/1.json
  def update
    respond_to do |format|
      if @gameurl.update(gameurl_params)
        format.html { redirect_to @gameurl, notice: 'Gameurl was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameurl }
      else
        format.html { render :edit }
        format.json { render json: @gameurl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameurls/1
  # DELETE /gameurls/1.json
  def destroy
    @gameurl.destroy
    respond_to do |format|
      format.html { redirect_to gameurls_url, notice: 'Gameurl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameurl
      @gameurl = Gameurl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameurl_params
      params.require(:gameurl).permit(:url)
    end
end
