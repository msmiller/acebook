require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        instance: nil,
        user: nil,
        section: nil,
        name: "Name",
        slug: "Slug",
        excerpt: "MyText",
        excerpt_format: "Excerpt Format",
        aasm_state: "Aasm State",
        is_public: false,
        is_monetized: false,
        is_pinned: false,
        was_mailed: false,
        is_static: false
      ),
      Article.create!(
        instance: nil,
        user: nil,
        section: nil,
        name: "Name",
        slug: "Slug",
        excerpt: "MyText",
        excerpt_format: "Excerpt Format",
        aasm_state: "Aasm State",
        is_public: false,
        is_monetized: false,
        is_pinned: false,
        was_mailed: false,
        is_static: false
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Slug".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Excerpt Format".to_s, count: 2
    assert_select "tr>td", text: "Aasm State".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
