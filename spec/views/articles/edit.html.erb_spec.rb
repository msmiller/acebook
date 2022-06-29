require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      instance: nil,
      user: nil,
      section: nil,
      name: "MyString",
      slug: "MyString",
      excerpt: "MyText",
      excerpt_format: "MyString",
      aasm_state: "MyString",
      is_public: false,
      is_monetized: false,
      is_pinned: false,
      was_mailed: false,
      is_static: false
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[instance_id]"

      assert_select "input[name=?]", "article[user_id]"

      assert_select "input[name=?]", "article[section_id]"

      assert_select "input[name=?]", "article[name]"

      assert_select "input[name=?]", "article[slug]"

      assert_select "textarea[name=?]", "article[excerpt]"

      assert_select "input[name=?]", "article[excerpt_format]"

      assert_select "input[name=?]", "article[aasm_state]"

      assert_select "input[name=?]", "article[is_public]"

      assert_select "input[name=?]", "article[is_monetized]"

      assert_select "input[name=?]", "article[is_pinned]"

      assert_select "input[name=?]", "article[was_mailed]"

      assert_select "input[name=?]", "article[is_static]"
    end
  end
end
