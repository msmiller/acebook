require 'rails_helper'

RSpec.describe "newsletters/new", type: :view do
  before(:each) do
    assign(:newsletter, Newsletter.new(
      user: nil,
      instance: nil,
      name: "MyString",
      slug: "MyString",
      subject: "MyString",
      recurrence: "",
      is_active: false,
      autosend: false,
      aasm_state: "MyString"
    ))
  end

  it "renders new newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletters_path, "post" do

      assert_select "input[name=?]", "newsletter[user_id]"

      assert_select "input[name=?]", "newsletter[instance_id]"

      assert_select "input[name=?]", "newsletter[name]"

      assert_select "input[name=?]", "newsletter[slug]"

      assert_select "input[name=?]", "newsletter[subject]"

      assert_select "input[name=?]", "newsletter[recurrence]"

      assert_select "input[name=?]", "newsletter[is_active]"

      assert_select "input[name=?]", "newsletter[autosend]"

      assert_select "input[name=?]", "newsletter[aasm_state]"
    end
  end
end
