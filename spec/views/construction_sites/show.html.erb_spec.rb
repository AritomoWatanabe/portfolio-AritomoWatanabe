require 'rails_helper'

RSpec.describe "construction_sites/show", type: :view do
  before(:each) do
    @construction_site = assign(:construction_site, ConstructionSite.create!(
      name: "Name",
      address: "Address",
      prime_contractor: "Prime Contractor",
      caution: "Caution",
      foremen: "Foremen",
      process: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Prime Contractor/)
    expect(rendered).to match(/Caution/)
    expect(rendered).to match(/Foremen/)
    expect(rendered).to match(/2/)
  end
end
