require 'rails_helper'

RSpec.describe "machines/edit", type: :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      construction_site_id: 1,
      name: "MyString",
      need_repair: false
    ))
  end

  it "renders the edit machine form" do
    render

    assert_select "form[action=?][method=?]", machine_path(@machine), "post" do

      assert_select "input[name=?]", "machine[construction_site_id]"

      assert_select "input[name=?]", "machine[name]"

      assert_select "input[name=?]", "machine[need_repair]"
    end
  end
end
