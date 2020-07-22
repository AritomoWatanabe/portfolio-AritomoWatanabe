require 'rails_helper'

RSpec.describe "attendance_records/edit", type: :view do
  before(:each) do
    @attendance_record = assign(:attendance_record, AttendanceRecord.create!(
      user_id: 1,
      construction_site_id: 1
    ))
  end

  it "renders the edit attendance_record form" do
    render

    assert_select "form[action=?][method=?]", attendance_record_path(@attendance_record), "post" do

      assert_select "input[name=?]", "attendance_record[user_id]"

      assert_select "input[name=?]", "attendance_record[construction_site_id]"
    end
  end
end
