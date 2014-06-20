require 'spec_helper.rb'

describe 'User' do

  describe 'Validation' do
    user = FactoryGirl.build(:user)
    describe '#user_name' do

      it "user_name is present" do
        user.user_name =""
        user.should_not be_valid
      end

      it "at least 4 letters" do
        user.user_name = "ABC"
        user.should_not be_valid
        user.user_name= "ABCD"
        user.should be_valid
      end
    end

    describe "#email" do

      it "is present" do
        user.email =""
        user.should_not be_valid
      end

      context "when email is valid" do
        it "should not fail validation" do
          user = FactoryGirl.build(:user, email: "valid@gmail.com")
          user.should be_valid
        end
      end

      context "format" do
        it "should fail validation" do
          user = FactoryGirl.build(:user, email: "validgmailcom")
          user.should have(1).error_on(:email)
          user = FactoryGirl.build(:user, email: "valid@gmailcom")
          user.should have(1).error_on(:email)
          user = FactoryGirl.build(:user, email: "validgmail.com")
          user.should have(1).error_on(:email)
          user = FactoryGirl.build(:user, email: "valid.gmail.com")
          user.should have(1).error_on(:email)
          user = FactoryGirl.build(:user, email: "http://eyad.says.com")
          user.should have(1).error_on(:email)
        end
      end

    end

  end


end
