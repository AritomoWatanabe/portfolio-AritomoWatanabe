require 'rails_helper'

RSpec.describe "attendance_records/show", type: :view do
  before(:each) do
    @attendance_record = assign(:attendance_record, AttendanceRecord.create!(
      user_id: 2,
      construction_site_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
