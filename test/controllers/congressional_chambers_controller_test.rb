require 'test_helper'

class CongressionalChambersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congressional_chamber = congressional_chambers(:one)
  end

  test "should get index" do
    get congressional_chambers_url
    assert_response :success
  end

  test "should get new" do
    get new_congressional_chamber_url
    assert_response :success
  end

  test "should create congressional_chamber" do
    assert_difference('CongressionalChamber.count') do
      post congressional_chambers_url, params: { congressional_chamber: { name: @congressional_chamber.name } }
    end

    assert_redirected_to congressional_chamber_url(CongressionalChamber.last)
  end

  test "should show congressional_chamber" do
    get congressional_chamber_url(@congressional_chamber)
    assert_response :success
  end

  test "should get edit" do
    get edit_congressional_chamber_url(@congressional_chamber)
    assert_response :success
  end

  test "should update congressional_chamber" do
    patch congressional_chamber_url(@congressional_chamber), params: { congressional_chamber: { name: @congressional_chamber.name } }
    assert_redirected_to congressional_chamber_url(@congressional_chamber)
  end

  test "should destroy congressional_chamber" do
    assert_difference('CongressionalChamber.count', -1) do
      delete congressional_chamber_url(@congressional_chamber)
    end

    assert_redirected_to congressional_chambers_url
  end
end
