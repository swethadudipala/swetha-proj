require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get my_blog" do
    get blog_my_blog_url
    assert_response :success
  end

end
