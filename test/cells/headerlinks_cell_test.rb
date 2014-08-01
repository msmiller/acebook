require 'test_helper'

class HeaderlinksCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
