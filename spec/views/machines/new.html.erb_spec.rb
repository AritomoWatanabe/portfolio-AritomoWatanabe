require 'rails_helper'

RSpec.describe "machines/new", type: :view do
  before(:each) do
    assign(:machine, Machine.new(
      construction_site_id: 1,
      name: "MyString",
      need_repair: false
    ))
  end

  it "renders new machine form" do
    render

    assert_select "form[action=?][method=?]", machines_path, "post" do

      assert_select "input[name=?]", "machine[construction_site_id]"

      assert_select "input[name=?]", "machine[name]"

      assert_select "input[name=?]", "machine[need_repair]"
    end
  end
end
