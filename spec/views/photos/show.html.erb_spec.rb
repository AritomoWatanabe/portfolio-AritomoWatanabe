require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      construction_site_id: 2,
      image_id: "Image",
      explanation: "Explanation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Explanation/)
  end
end
