require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    before do
      @user = FactoryBot.build(:user)
    end
    
    describe 'New user sign-up' do
      context 'When new sign-up is successful' do
        it 'email, password and password_Being able to sign-up if confirmation exists' do
          expect(@user).to be_valid
        end
        it 'You can sign-up if your password is 6 characters or more' do
          @user.password = '123456'
          @user.password_confirmation = '123456'
          expect(@user).to be_valid
        end
      end

      context 'When new sign-up is invalid' do
        it 'Cannot sign-up if email is empty' do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end
        it 'Cannot sign-up if there are duplicate emails' do
          @user.save
          another_user = FactoryBot.build(:user, email: @user.email)
          another_user.valid?
          expect(another_user.errors.full_messages).to include("Email has already been taken")
        end
        it 'Cannot sign-up if password is empty' do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank", "Password confirmation doesn't match Password")
        end
        it 'password even if password exists_Confirmation cannot be signed-up if it is empty' do
          @user.password_confirmation = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
        end
        it 'Cannot sign-up if password is 5 characters or less' do
          @user.password = '12345'
          @user.password_confirmation = '12345'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
        end
      end

    end
  end
end