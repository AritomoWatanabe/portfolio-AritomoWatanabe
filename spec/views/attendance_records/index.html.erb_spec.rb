require 'rails_helper'

RSpec.describe "attendance_records/index", type: :view do
  before(:each) do
    assign(:attendance_records, [
      AttendanceRecord.create!(
        user_id: 2,
        construction_site_id: 3
      ),
      AttendanceRecord.create!(
        user_id: 2,
        construction_site_id: 3
      )
    ])
  end

  it "renders a list of attendance_records" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
