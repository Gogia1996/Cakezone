require "test_helper"

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get testimonials_index_url
    assert_response :success
  end
end
