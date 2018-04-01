require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  test "Can shorten url via POST" do
    post shorten_url, params: {url: "2ton.com.au"}
    assert_response :success
  end
  
  test "Invalid POST causes error" do
    post shorten_url
    assert_response :badrequest
  end
end
