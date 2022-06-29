require 'rails_helper'

RSpec.describe "editions/new", type: :view do
  before(:each) do
    assign(:edition, Edition.new())
  end

  it "renders new edition form" do
    render

    assert_select "form[action=?][method=?]", editions_path, "post" do
    end
  end
end
