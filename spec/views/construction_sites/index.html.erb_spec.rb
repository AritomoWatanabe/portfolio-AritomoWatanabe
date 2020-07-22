require 'rails_helper'

RSpec.describe "construction_sites/index", type: :view do
  before(:each) do
    assign(:construction_sites, [
      ConstructionSite.create!(
        name: "Name",
        address: "Address",
        prime_contractor: "Prime Contractor",
        caution: "Caution",
        foremen: "Foremen",
        process: 2
      ),
      ConstructionSite.create!(
        name: "Name",
        address: "Address",
        prime_contractor: "Prime Contractor",
        caution: "Caution",
        foremen: "Foremen",
        process: 2
      )
    ])
  end

  it "renders a list of construction_sites" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Prime Contractor".to_s, count: 2
    assert_select "tr>td", text: "Caution".to_s, count: 2
    assert_select "tr>td", text: "Foremen".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
