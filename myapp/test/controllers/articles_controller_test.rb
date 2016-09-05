require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get New" do
    get articles_New_url
    assert_response :success
  end

end
