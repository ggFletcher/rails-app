require "test_helper"

class SinglePitcherBoxScoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get single_pitcher_box_score_index_url
    assert_response :success
  end
end
