require 'test_helper'

class SearchAdvisorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_advisors_index_url
    assert_response :success
  end

end
