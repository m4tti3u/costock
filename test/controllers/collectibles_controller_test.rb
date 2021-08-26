require 'test_helper'

class CollectiblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get collectibles_index_url
    assert_response :success
  end

  test "should get show" do
    get collectibles_show_url
    assert_response :success
  end

end
