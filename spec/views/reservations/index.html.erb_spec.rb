require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        content: "Content",
        construction_site_id: 2,
        car_id: 3
      ),
      Reservation.create!(
        content: "Content",
        construction_site_id: 2,
        car_id: 3
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", text: "Content".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
