require 'rails_helper'

RSpec.describe "daily_reports/index", type: :view do
  before(:each) do
    assign(:daily_reports, [
      DailyReport.create!(
        construction_site_id: 2,
        content: "Content",
        etcetera: "Etcetera",
        company_people: "Company People",
        care_people: 3,
        scaffold_people: 4,
        interior_people: 5,
        watchman: 6,
        garbage_collection_car: 7,
        big_garbage_collection_car: 8,
        concrete_car: 9,
        big_concrete_car: 10,
        soil_car: 11
      ),
      DailyReport.create!(
        construction_site_id: 2,
        content: "Content",
        etcetera: "Etcetera",
        company_people: "Company People",
        care_people: 3,
        scaffold_people: 4,
        interior_people: 5,
        watchman: 6,
        garbage_collection_car: 7,
        big_garbage_collection_car: 8,
        concrete_car: 9,
        big_concrete_car: 10,
        soil_car: 11
      )
    ])
  end

  it "renders a list of daily_reports" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Content".to_s, count: 2
    assert_select "tr>td", text: "Etcetera".to_s, count: 2
    assert_select "tr>td", text: "Company People".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
    assert_select "tr>td", text: 9.to_s, count: 2
    assert_select "tr>td", text: 10.to_s, count: 2
    assert_select "tr>td", text: 11.to_s, count: 2
  end
end
