require 'rails_helper'

RSpec.describe "newsletters/index", type: :view do
  before(:each) do
    assign(:newsletters, [
      Newsletter.create!(
        user: nil,
        instance: nil,
        name: "Name",
        slug: "Slug",
        subject: "Subject",
        recurrence: "",
        is_active: false,
        autosend: false,
        aasm_state: "Aasm State"
      ),
      Newsletter.create!(
        user: nil,
        instance: nil,
        name: "Name",
        slug: "Slug",
        subject: "Subject",
        recurrence: "",
        is_active: false,
        autosend: false,
        aasm_state: "Aasm State"
      )
    ])
  end

  it "renders a list of newsletters" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Slug".to_s, count: 2
    assert_select "tr>td", text: "Subject".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Aasm State".to_s, count: 2
  end
end
