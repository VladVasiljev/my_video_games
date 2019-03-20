require "application_system_test_case"

class GameurlsTest < ApplicationSystemTestCase
  setup do
    @gameurl = gameurls(:one)
  end

  test "visiting the index" do
    visit gameurls_url
    assert_selector "h1", text: "Gameurls"
  end

  test "creating a Gameurl" do
    visit gameurls_url
    click_on "New Gameurl"

    fill_in "Url", with: @gameurl.url
    click_on "Create Gameurl"

    assert_text "Gameurl was successfully created"
    click_on "Back"
  end

  test "updating a Gameurl" do
    visit gameurls_url
    click_on "Edit", match: :first

    fill_in "Url", with: @gameurl.url
    click_on "Update Gameurl"

    assert_text "Gameurl was successfully updated"
    click_on "Back"
  end

  test "destroying a Gameurl" do
    visit gameurls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gameurl was successfully destroyed"
  end
end
