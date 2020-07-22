require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      content: "Content",
      construction_site_id: 2,
      car_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
