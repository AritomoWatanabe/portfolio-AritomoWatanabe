require 'rails_helper'

RSpec.describe "daily_reports/show", type: :view do
  before(:each) do
    @daily_report = assign(:daily_report, DailyReport.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Etcetera/)
    expect(rendered).to match(/Company People/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
  end
end
