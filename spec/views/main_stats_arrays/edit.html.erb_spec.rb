require 'rails_helper'

RSpec.describe "main_stats_arrays/edit", type: :view do
  before(:each) do
    @main_stats_array = assign(:main_stats_array, MainStatsArray.create!(
      strength: 1,
      dexterity: 1,
      constitution: 1,
      intelligence: 1,
      wisdom: 1,
      charisma: 1
    ))
  end

  it "renders the edit main_stats_array form" do
    render

    assert_select "form[action=?][method=?]", main_stats_array_path(@main_stats_array), "post" do

      assert_select "input[name=?]", "main_stats_array[strength]"

      assert_select "input[name=?]", "main_stats_array[dexterity]"

      assert_select "input[name=?]", "main_stats_array[constitution]"

      assert_select "input[name=?]", "main_stats_array[intelligence]"

      assert_select "input[name=?]", "main_stats_array[wisdom]"

      assert_select "input[name=?]", "main_stats_array[charisma]"
    end
  end
end
