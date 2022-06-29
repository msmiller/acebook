require 'rails_helper'

RSpec.describe "instances/new", type: :view do
  before(:each) do
    assign(:instance, Instance.new(
      user: nil,
      name: "MyString",
      slug: "MyString",
      subdomain: "MyString",
      description: "MyText",
      is_public: false,
      is_monetized: false,
      render_as: "MyString",
      settings: "",
      has_sections: false,
      in_nexus: false,
      show_ads: false
    ))
  end

  it "renders new instance form" do
    render

    assert_select "form[action=?][method=?]", instances_path, "post" do

      assert_select "input[name=?]", "instance[user_id]"

      assert_select "input[name=?]", "instance[name]"

      assert_select "input[name=?]", "instance[slug]"

      assert_select "input[name=?]", "instance[subdomain]"

      assert_select "textarea[name=?]", "instance[description]"

      assert_select "input[name=?]", "instance[is_public]"

      assert_select "input[name=?]", "instance[is_monetized]"

      assert_select "input[name=?]", "instance[render_as]"

      assert_select "input[name=?]", "instance[settings]"

      assert_select "input[name=?]", "instance[has_sections]"

      assert_select "input[name=?]", "instance[in_nexus]"

      assert_select "input[name=?]", "instance[show_ads]"
    end
  end
end
