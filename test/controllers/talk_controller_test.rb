require 'test_helper'

class TalkControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get talk_start_url
    assert_response :success
  end

end
