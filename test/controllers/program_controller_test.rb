require "test_helper"

class ProgramControllerTest < ActionDispatch::IntegrationTest
  test "should get lang" do
    get program_lang_url
    assert_response :success
  end
end
