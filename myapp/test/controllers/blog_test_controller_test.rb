require 'test_helper'

class BlogTestControllerTest < ActionDispatch::IntegrationTest
  test "should get blog_t" do
    get blog_test_blog_t_url
    assert_response :success
  end

end
