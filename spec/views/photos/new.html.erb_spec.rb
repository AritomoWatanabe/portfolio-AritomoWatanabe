require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      construction_site_id: 1,
      image_id: "MyString",
      explanation: "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input[name=?]", "photo[construction_site_id]"

      assert_select "input[name=?]", "photo[image_id]"

      assert_select "input[name=?]", "photo[explanation]"
    end
  end
end
