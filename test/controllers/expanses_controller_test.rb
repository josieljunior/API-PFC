require "test_helper"

class ExpansesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expanse = expanses(:one)
  end

  test "should get index" do
    get expanses_url, as: :json
    assert_response :success
  end

  test "should create expanse" do
    assert_difference("Expanse.count") do
      post expanses_url, params: { expanse: { date: @expanse.date, description: @expanse.description, value: @expanse.value } }, as: :json
    end

    assert_response :created
  end

  test "should show expanse" do
    get expanse_url(@expanse), as: :json
    assert_response :success
  end

  test "should update expanse" do
    patch expanse_url(@expanse), params: { expanse: { date: @expanse.date, description: @expanse.description, value: @expanse.value } }, as: :json
    assert_response :success
  end

  test "should destroy expanse" do
    assert_difference("Expanse.count", -1) do
      delete expanse_url(@expanse), as: :json
    end

    assert_response :no_content
  end
end
