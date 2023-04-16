require 'rails_helper'

RSpec.describe PlayerCharactersController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # PlayerCharacter
    let(:valid_attributes) {
        { :name => "Terrabyte", :main_stats => "17", :proficiency => "3", saving_throws => “dexterity” }
    }
    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            PlayerCharacters.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to have_http_status(:ok) # Expects a HTTP Status code of 302
        end
    end
end