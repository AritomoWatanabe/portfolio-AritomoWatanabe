require 'rails_helper'

RSpec.describe "daily_reports/edit", type: :view do
  before(:each) do
    @daily_report = assign(:daily_report, DailyReport.create!(
      construction_site_id: 1,
      content: "MyString",
      etcetera: "MyString",
      company_people: "MyString",
      care_people: 1,
      scaffold_people: 1,
      interior_people: 1,
      watchman: 1,
      garbage_collection_car: 1,
      big_garbage_collection_car: 1,
      concrete_car: 1,
      big_concrete_car: 1,
      soil_car: 1
    ))
  end

  it "renders the edit daily_report form" do
    render

    assert_select "form[action=?][method=?]", daily_report_path(@daily_report), "post" do

      assert_select "input[name=?]", "daily_report[construction_site_id]"

      assert_select "input[name=?]", "daily_report[content]"

      assert_select "input[name=?]", "daily_report[etcetera]"

      assert_select "input[name=?]", "daily_report[company_people]"

      assert_select "input[name=?]", "daily_report[care_people]"

      assert_select "input[name=?]", "daily_report[scaffold_people]"

      assert_select "input[name=?]", "daily_report[interior_people]"

      assert_select "input[name=?]", "daily_report[watchman]"

      assert_select "input[name=?]", "daily_report[garbage_collection_car]"

      assert_select "input[name=?]", "daily_report[big_garbage_collection_car]"

      assert_select "input[name=?]", "daily_report[concrete_car]"

      assert_select "input[name=?]", "daily_report[big_concrete_car]"

      assert_select "input[name=?]", "daily_report[soil_car]"
    end
  end
end
