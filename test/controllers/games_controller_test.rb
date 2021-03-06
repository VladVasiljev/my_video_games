require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
    @created = cookies[:created]
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { Description: @game.Description, Game_Title: @game.Game_Title, Publisher: @game.Publisher, Release_Date: @game.Release_DateS } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { Description: @game.Description, Game_Title: @game.Game_Title, Publisher: @game.Publisher, Release_Date: @game.Release_Date } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end

  # test "search" do
  #   if params[:search].present?
  #     @games = Game.searchkick(params[:search])
  #   else
  #     @games = Game.all
  #   end
  # end
end
