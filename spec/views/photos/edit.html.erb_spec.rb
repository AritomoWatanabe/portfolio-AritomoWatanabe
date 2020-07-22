require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      construction_site_id: 1,
      image_id: "MyString",
      explanation: "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input[name=?]", "photo[construction_site_id]"

      assert_select "input[name=?]", "photo[image_id]"

      assert_select "input[name=?]", "photo[explanation]"
    end
  end
end
