require 'test_helper'

class SeesonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get seesons_new_url
    assert_response :success
  end

end
