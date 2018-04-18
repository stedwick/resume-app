require 'test_helper'

class CsrfControllerTest < ActionDispatch::IntegrationTest
  test "should get meta_tags" do
    get csrf_meta_tags_url
    assert_response :success
  end

end
