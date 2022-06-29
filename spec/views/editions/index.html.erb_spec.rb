require 'rails_helper'

RSpec.describe "editions/index", type: :view do
  before(:each) do
    assign(:editions, [
      Edition.create!(),
      Edition.create!()
    ])
  end

  it "renders a list of editions" do
    render
  end
end
