require "application_system_test_case"

class InboxMessagesTest < ApplicationSystemTestCase
  setup do
    @inbox_message = inbox_messages(:one)
  end

  test "visiting the index" do
    visit inbox_messages_url
    assert_selector "h1", text: "Inbox Messages"
  end

  test "creating a Inbox message" do
    visit inbox_messages_url
    click_on "New Inbox Message"

    click_on "Create Inbox message"

    assert_text "Inbox message was successfully created"
    click_on "Back"
  end

  test "updating a Inbox message" do
    visit inbox_messages_url
    click_on "Edit", match: :first

    click_on "Update Inbox message"

    assert_text "Inbox message was successfully updated"
    click_on "Back"
  end

  test "destroying a Inbox message" do
    visit inbox_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inbox message was successfully destroyed"
  end
end
