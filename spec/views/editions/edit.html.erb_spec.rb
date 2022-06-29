require 'rails_helper'

RSpec.describe "editions/edit", type: :view do
  before(:each) do
    @edition = assign(:edition, Edition.create!())
  end

  it "renders the edit edition form" do
    render

    assert_select "form[action=?][method=?]", edition_path(@edition), "post" do
    end
  end
end
