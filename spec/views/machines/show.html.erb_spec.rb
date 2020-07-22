require 'rails_helper'

RSpec.describe "machines/show", type: :view do
  before(:each) do
    @machine = assign(:machine, Machine.create!(
      construction_site_id: 2,
      name: "Name",
      need_repair: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
