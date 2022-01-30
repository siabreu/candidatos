require "test_helper"

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospect = prospects(:one)
  end

  test "should get index" do
    get prospects_url
    assert_response :success
  end

  test "should get new" do
    get new_prospect_url
    assert_response :success
  end

  test "should create prospect" do
    assert_difference("Prospect.count") do
      post prospects_url, params: { prospect: { address: @prospect.address, birth_date: @prospect.birth_date, cpf: @prospect.cpf, email: @prospect.email, group: @prospect.group, group_name: @prospect.group_name, name: @prospect.name, phone: @prospect.phone } }
    end

    assert_redirected_to prospect_url(Prospect.last)
  end

  test "should show prospect" do
    get prospect_url(@prospect)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospect_url(@prospect)
    assert_response :success
  end

  test "should update prospect" do
    patch prospect_url(@prospect), params: { prospect: { address: @prospect.address, birth_date: @prospect.birth_date, cpf: @prospect.cpf, email: @prospect.email, group: @prospect.group, group_name: @prospect.group_name, name: @prospect.name, phone: @prospect.phone } }
    assert_redirected_to prospect_url(@prospect)
  end

  test "should destroy prospect" do
    assert_difference("Prospect.count", -1) do
      delete prospect_url(@prospect)
    end

    assert_redirected_to prospects_url
  end
end
