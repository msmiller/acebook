require 'test_helper'

class FooterlinksCellTest < Cell::TestCase
  test "show" do
    invoke :show
    assert_select "p"
  end
  

end
