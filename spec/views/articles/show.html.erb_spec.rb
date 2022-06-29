require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Excerpt Format/)
    expect(rendered).to match(/Aasm State/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
