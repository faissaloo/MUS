require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "correct id generation" do
    assert Url.idToCode(1) == "B"
    assert Url.idToCode(2776) == "ml"
    assert Url.idToCode(75375375197) == "X1Lv)h"
  end
  
  test "Duplicate urls are not generated" do
    assert Url.shortenUrl("www.fsf.org") == Url.shortenUrl("www.fsf.org")
  end
end
