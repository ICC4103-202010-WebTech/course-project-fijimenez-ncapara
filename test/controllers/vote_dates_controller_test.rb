require 'test_helper'

class VoteDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote_date = vote_dates(:one)
  end

  test "should get index" do
    get vote_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_vote_date_url
    assert_response :success
  end

  test "should create vote_date" do
    assert_difference('VoteDate.count') do
      post vote_dates_url, params: { vote_date: {  } }
    end

    assert_redirected_to vote_date_url(VoteDate.last)
  end

  test "should show vote_date" do
    get vote_date_url(@vote_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_vote_date_url(@vote_date)
    assert_response :success
  end

  test "should update vote_date" do
    patch vote_date_url(@vote_date), params: { vote_date: {  } }
    assert_redirected_to vote_date_url(@vote_date)
  end

  test "should destroy vote_date" do
    assert_difference('VoteDate.count', -1) do
      delete vote_date_url(@vote_date)
    end

    assert_redirected_to vote_dates_url
  end
end
