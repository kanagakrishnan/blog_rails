require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should get blogindex" do
    get :blogindex
    assert_response :success
  end

end
