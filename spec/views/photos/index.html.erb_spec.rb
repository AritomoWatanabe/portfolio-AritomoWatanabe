require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        construction_site_id: 2,
        image_id: "Image",
        explanation: "Explanation"
      ),
      Photo.create!(
        construction_site_id: 2,
        image_id: "Image",
        explanation: "Explanation"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
    assert_select "tr>td", text: "Explanation".to_s, count: 2
  end
end
