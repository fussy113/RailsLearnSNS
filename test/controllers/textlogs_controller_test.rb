require 'test_helper'

class TextlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get textlogs_create_url
    assert_response :success
  end

end
