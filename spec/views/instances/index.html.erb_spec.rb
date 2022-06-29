require 'rails_helper'

RSpec.describe "instances/index", type: :view do
  before(:each) do
    assign(:instances, [
      Instance.create!(
        user: nil,
        name: "Name",
        slug: "Slug",
        subdomain: "Subdomain",
        description: "MyText",
        is_public: false,
        is_monetized: false,
        render_as: "Render As",
        settings: "",
        has_sections: false,
        in_nexus: false,
        show_ads: false
      ),
      Instance.create!(
        user: nil,
        name: "Name",
        slug: "Slug",
        subdomain: "Subdomain",
        description: "MyText",
        is_public: false,
        is_monetized: false,
        render_as: "Render As",
        settings: "",
        has_sections: false,
        in_nexus: false,
        show_ads: false
      )
    ])
  end

  it "renders a list of instances" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Slug".to_s, count: 2
    assert_select "tr>td", text: "Subdomain".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Render As".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
