require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Icon Key/)
    expect(rendered).to match(/Icon Color/)
    expect(rendered).to match(/false/)
  end
end
