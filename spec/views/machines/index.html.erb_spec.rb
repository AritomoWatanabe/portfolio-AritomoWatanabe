require 'rails_helper'

RSpec.describe "machines/index", type: :view do
  before(:each) do
    assign(:machines, [
      Machine.create!(
        construction_site_id: 2,
        name: "Name",
        need_repair: false
      ),
      Machine.create!(
        construction_site_id: 2,
        name: "Name",
        need_repair: false
      )
    ])
  end

  it "renders a list of machines" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
