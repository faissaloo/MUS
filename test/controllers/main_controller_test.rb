require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "Redirects to real page" do
    testAddr = "https://www.lainchan.org"
    get Url.shortenUrl(testAddr).sub("st.uk","")
    assert_redirected_to(testAddr)
  end
  
  test "Non-existent redirect gives 404" do
    get "/dank"
    assert_response :not_found
  end
end
