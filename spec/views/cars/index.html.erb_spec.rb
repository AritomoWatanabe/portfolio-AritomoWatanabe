require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        name: "Name",
        still_run: false
      ),
      Car.create!(
        name: "Name",
        still_run: false
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
