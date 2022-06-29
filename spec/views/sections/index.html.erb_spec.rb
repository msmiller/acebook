require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        instance: nil,
        name: "Name",
        slug: "Slug",
        description: "MyText",
        is_public: false,
        position: 2,
        settings: "",
        icon_key: "Icon Key",
        icon_color: "Icon Color",
        allow_comments: false
      ),
      Section.create!(
        instance: nil,
        name: "Name",
        slug: "Slug",
        description: "MyText",
        is_public: false,
        position: 2,
        settings: "",
        icon_key: "Icon Key",
        icon_color: "Icon Color",
        allow_comments: false
      )
    ])
  end

  it "renders a list of sections" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Slug".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Icon Key".to_s, count: 2
    assert_select "tr>td", text: "Icon Color".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
