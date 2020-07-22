require 'rails_helper'

RSpec.describe "attendance_records/new", type: :view do
  before(:each) do
    assign(:attendance_record, AttendanceRecord.new(
      user_id: 1,
      construction_site_id: 1
    ))
  end

  it "renders new attendance_record form" do
    render

    assert_select "form[action=?][method=?]", attendance_records_path, "post" do

      assert_select "input[name=?]", "attendance_record[user_id]"

      assert_select "input[name=?]", "attendance_record[construction_site_id]"
    end
  end
end
