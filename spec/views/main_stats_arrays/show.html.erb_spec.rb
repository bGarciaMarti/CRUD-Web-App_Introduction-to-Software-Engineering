require 'rails_helper'

RSpec.describe "main_stats_arrays/show", type: :view do
  before(:each) do
    @main_stats_array = assign(:main_stats_array, MainStatsArray.create!(
      strength: 2,
      dexterity: 3,
      constitution: 4,
      intelligence: 5,
      wisdom: 6,
      charisma: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
