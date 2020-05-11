require 'test_helper'

class InboxMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inbox_message = inbox_messages(:one)
  end

  test "should get index" do
    get inbox_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_inbox_message_url
    assert_response :success
  end

  test "should create inbox_message" do
    assert_difference('InboxMessage.count') do
      post inbox_messages_url, params: { inbox_message: {  } }
    end

    assert_redirected_to inbox_message_url(InboxMessage.last)
  end

  test "should show inbox_message" do
    get inbox_message_url(@inbox_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_inbox_message_url(@inbox_message)
    assert_response :success
  end

  test "should update inbox_message" do
    patch inbox_message_url(@inbox_message), params: { inbox_message: {  } }
    assert_redirected_to inbox_message_url(@inbox_message)
  end

  test "should destroy inbox_message" do
    assert_difference('InboxMessage.count', -1) do
      delete inbox_message_url(@inbox_message)
    end

    assert_redirected_to inbox_messages_url
  end
end
