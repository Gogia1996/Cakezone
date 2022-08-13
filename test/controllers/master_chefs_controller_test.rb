require "test_helper"

class MasterChefsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get master_chefs_index_url
    assert_response :success
  end
end
