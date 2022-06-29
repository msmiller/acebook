require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      instance: nil,
      name: "MyString",
      slug: "MyString",
      description: "MyText",
      is_public: false,
      position: 1,
      settings: "",
      icon_key: "MyString",
      icon_color: "MyString",
      allow_comments: false
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input[name=?]", "section[instance_id]"

      assert_select "input[name=?]", "section[name]"

      assert_select "input[name=?]", "section[slug]"

      assert_select "textarea[name=?]", "section[description]"

      assert_select "input[name=?]", "section[is_public]"

      assert_select "input[name=?]", "section[position]"

      assert_select "input[name=?]", "section[settings]"

      assert_select "input[name=?]", "section[icon_key]"

      assert_select "input[name=?]", "section[icon_color]"

      assert_select "input[name=?]", "section[allow_comments]"
    end
  end
end
