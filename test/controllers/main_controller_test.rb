require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "Redirects to real page" do
    testAddr = "https://www.lainchan.org"
    get Url.shortenUrl(testAddr).sub("st.uk","")
    assert_redirected_to(testAddr)
  end
end
