require 'test_helper'

class OrganizationFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_file = organization_files(:one)
  end

  test "should get index" do
    get organization_files_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_file_url
    assert_response :success
  end

  test "should create organization_file" do
    assert_difference('OrganizationFile.count') do
      post organization_files_url, params: { organization_file: {  } }
    end

    assert_redirected_to organization_file_url(OrganizationFile.last)
  end

  test "should show organization_file" do
    get organization_file_url(@organization_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_file_url(@organization_file)
    assert_response :success
  end

  test "should update organization_file" do
    patch organization_file_url(@organization_file), params: { organization_file: {  } }
    assert_redirected_to organization_file_url(@organization_file)
  end

  test "should destroy organization_file" do
    assert_difference('OrganizationFile.count', -1) do
      delete organization_file_url(@organization_file)
    end

    assert_redirected_to organization_files_url
  end
end
