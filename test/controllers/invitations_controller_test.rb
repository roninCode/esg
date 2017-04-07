require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invitations_index_url
    assert_response :success
  end

  test "should get show" do
    get invitations_show_url
    assert_response :success
  end

  test "should get new" do
    get invitations_new_url
    assert_response :success
  end

  test "should get create" do
    get invitations_create_url
    assert_response :success
  end

  test "should get edit" do
    get invitations_edit_url
    assert_response :success
  end

  test "should get update" do
    get invitations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get invitations_destroy_url
    assert_response :success
  end

end
