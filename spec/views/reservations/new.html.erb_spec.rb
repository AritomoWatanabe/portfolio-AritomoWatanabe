require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      content: "MyString",
      construction_site_id: 1,
      car_id: 1
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[content]"

      assert_select "input[name=?]", "reservation[construction_site_id]"

      assert_select "input[name=?]", "reservation[car_id]"
    end
  end
end
