require 'rails_helper'

RSpec.describe "construction_sites/new", type: :view do
  before(:each) do
    assign(:construction_site, ConstructionSite.new(
      name: "MyString",
      address: "MyString",
      prime_contractor: "MyString",
      caution: "MyString",
      foremen: "MyString",
      process: 1
    ))
  end

  it "renders new construction_site form" do
    render

    assert_select "form[action=?][method=?]", construction_sites_path, "post" do

      assert_select "input[name=?]", "construction_site[name]"

      assert_select "input[name=?]", "construction_site[address]"

      assert_select "input[name=?]", "construction_site[prime_contractor]"

      assert_select "input[name=?]", "construction_site[caution]"

      assert_select "input[name=?]", "construction_site[foremen]"

      assert_select "input[name=?]", "construction_site[process]"
    end
  end
end
