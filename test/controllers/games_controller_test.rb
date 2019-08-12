require 'test_helper'

def new
end

def score

end

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get games_new_url
    assert_response :success
  end

  test "should get score" do
    get games_score_url
    assert_response :success
  end
end
