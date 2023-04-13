module ControllerMacros
    def login_user
      # Before each test, create and login the user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryBot.create(:user)
        # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
        sign_in user
      end
    end
end  

RSpec.configure do |config|
    config.include Devise::Test::ControllerHelpers, :type => :controller
    config.include Devise::Test::IntegrationHelpers, :type => :feature
    config.include FactoryBot::Syntax::Methods
    config.extend ControllerMacros, :type => :controller
 end 