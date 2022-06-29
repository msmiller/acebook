require 'rails_helper'

RSpec.describe "instances/show", type: :view do
  before(:each) do
    @instance = assign(:instance, Instance.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Subdomain/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Render As/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
