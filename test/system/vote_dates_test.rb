require "application_system_test_case"

class VoteDatesTest < ApplicationSystemTestCase
  setup do
    @vote_date = vote_dates(:one)
  end

  test "visiting the index" do
    visit vote_dates_url
    assert_selector "h1", text: "Vote Dates"
  end

  test "creating a Vote date" do
    visit vote_dates_url
    click_on "New Vote Date"

    click_on "Create Vote date"

    assert_text "Vote date was successfully created"
    click_on "Back"
  end

  test "updating a Vote date" do
    visit vote_dates_url
    click_on "Edit", match: :first

    click_on "Update Vote date"

    assert_text "Vote date was successfully updated"
    click_on "Back"
  end

  test "destroying a Vote date" do
    visit vote_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vote date was successfully destroyed"
  end
end
