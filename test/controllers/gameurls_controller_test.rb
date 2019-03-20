require 'test_helper'

class GameurlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameurl = gameurls(:one)
  end

  test "should get index" do
    get gameurls_url
    assert_response :success
  end

  test "should get new" do
    get new_gameurl_url
    assert_response :success
  end

  test "should create gameurl" do
    assert_difference('Gameurl.count') do
      post gameurls_url, params: { gameurl: { url: @gameurl.url } }
    end

    assert_redirected_to gameurl_url(Gameurl.last)
  end

  test "should show gameurl" do
    get gameurl_url(@gameurl)
    assert_response :success
  end

  test "should get edit" do
    get edit_gameurl_url(@gameurl)
    assert_response :success
  end

  test "should update gameurl" do
    patch gameurl_url(@gameurl), params: { gameurl: { url: @gameurl.url } }
    assert_redirected_to gameurl_url(@gameurl)
  end

  test "should destroy gameurl" do
    assert_difference('Gameurl.count', -1) do
      delete gameurl_url(@gameurl)
    end

    assert_redirected_to gameurls_url
  end
end
