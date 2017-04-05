require 'test_helper'

class AdvisorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advisors_index_url
    assert_response :success
  end

  test "should get show" do
    get advisors_show_url
    assert_response :success
  end

  test "should get update" do
    get advisors_update_url
    assert_response :success
  end

  test "should get create" do
    get advisors_create_url
    assert_response :success
  end

  test "should get new" do
    get advisors_new_url
    assert_response :success
  end

  test "should get destroy" do
    get advisors_destroy_url
    assert_response :success
  end

end
