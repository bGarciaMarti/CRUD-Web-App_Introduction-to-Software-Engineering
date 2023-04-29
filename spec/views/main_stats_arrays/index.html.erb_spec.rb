require 'rails_helper'

RSpec.describe "main_stats_arrays/index", type: :view do
  before(:each) do
    assign(:main_stats_arrays, [
      MainStatsArray.create!(
        strength: 2,
        dexterity: 3,
        constitution: 4,
        intelligence: 5,
        wisdom: 6,
        charisma: 7
      ),
      MainStatsArray.create!(
        strength: 2,
        dexterity: 3,
        constitution: 4,
        intelligence: 5,
        wisdom: 6,
        charisma: 7
      )
    ])
  end

  it "renders a list of main_stats_arrays" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
  end
end
