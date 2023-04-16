require "rails_helper"

describe "playerChar Attribute Requirements on Create", :type => :model do
  let(:valid_attributes) {
    { :name => "Dora", :main_stats => "17", :proficiency => "3", :saving_throws => "charisma" }
    }
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_project_path
    end

  context "validation tests" do
    it "should be able to save project when it has a name, main_stats, proficiency, and saving_throw" do
      playerchar = PlayerCharacter.new(valid_attributes)
      expect(playerchar.save).to eq(true)
    end

    # validate upon creation
    it "ensures the name is present when creating playerChar" do
      playerchar = PlayerCharacter.new(name: "Terrabyte")
      expect(playerchar.valid?).to eq(false) # ONLY 1 attribute/4 requirements, SO IT SHOULD BE FALSE
    end
    it "ensures the main_stat is present when creating playerChar" do
      playerchar = PlayerCharacter.new(main_stats: "17")
      expect(playerchar.valid?).to eq(false) # ONLY 1 attribute/4 requirements, SO IT SHOULD BE FALSE
    end  
    it "ensures the proficiency is present when creating playerChar" do
      playerchar = PlayerCharacter.new(proficiency: "2")
      expect(playerchar.valid?).to eq(false) # ONLY 1 attribute/4 requirements, SO IT SHOULD BE FALSE
    end  
    it "ensures the saving_throws is present when creating playerChar" do
      playerchar = PlayerCharacter.new(saving_throws: "dexterity")
      expect(playerchar.valid?).to eq(false) # ONLY 1 attribute/4 requirements, SO IT SHOULD BE FALSE
    end

    #it should not be able to save with any missing attribute
    it "should not be able to save playerChar when name is missing" do
      playerchar = PlayerCharacter.new(name: "Terrabyte")
      expect(playerchar.save).to eq(false)
    end
    it "should not be able to save playerChar when main_stats is missing" do
      playerchar = PlayerCharacter.new(main_stats: "17")
      expect(playerchar.save).to eq(false)
    end
    it "should not be able to save playerChar when proficiency is missing" do
      playerchar = PlayerCharacter.new(proficiency: "2")
      expect(playerchar.save).to eq(false)
    end
    it "should not be able to save playerChar when saving_throws is missing" do
      playerchar = PlayerCharacter.new(saving_throws: "dexterity")
      expect(playerchar.save).to eq(false)
    end
  end
end