require 'rails_helper'

RSpec.describe "editions/show", type: :view do
  before(:each) do
    @edition = assign(:edition, Edition.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
