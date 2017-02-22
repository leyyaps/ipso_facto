require 'test_helper'

class PrintedDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @printed_design = printed_designs(:one)
  end

  test "should get index" do
    get printed_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_printed_design_url
    assert_response :success
  end

  test "should create printed_design" do
    assert_difference('PrintedDesign.count') do
      post printed_designs_url, params: { printed_design: { client: @printed_design.client, date: @printed_design.date, description: @printed_design.description, lead_image: @printed_design.lead_image, secondary_image: @printed_design.secondary_image } }
    end

    assert_redirected_to printed_design_url(PrintedDesign.last)
  end

  test "should show printed_design" do
    get printed_design_url(@printed_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_printed_design_url(@printed_design)
    assert_response :success
  end

  test "should update printed_design" do
    patch printed_design_url(@printed_design), params: { printed_design: { client: @printed_design.client, date: @printed_design.date, description: @printed_design.description, lead_image: @printed_design.lead_image, secondary_image: @printed_design.secondary_image } }
    assert_redirected_to printed_design_url(@printed_design)
  end

  test "should destroy printed_design" do
    assert_difference('PrintedDesign.count', -1) do
      delete printed_design_url(@printed_design)
    end

    assert_redirected_to printed_designs_url
  end
end
