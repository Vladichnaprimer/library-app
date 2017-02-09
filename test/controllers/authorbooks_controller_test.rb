require 'test_helper'

class AuthorbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authorbooks_index_url
    assert_response :success
  end

  test "should get show" do
    get authorbooks_show_url
    assert_response :success
  end

end
