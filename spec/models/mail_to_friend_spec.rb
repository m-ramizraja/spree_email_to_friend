require 'spec_helper'
require 'test/factories'

describe Spree::MailToFriend do

  it { should validate_presence_of :subject }
  it { should validate_presence_of :sender_name }
  it { should validate_presence_of :recipient_name }



  context "Validate required fields" do

    let(:mail_data) { FactoryGirl.build(:valid_email) }

    it "should verify test data hase been generated" do

      mail_data.should be_valid

    end

  end

  context "Invalid recipents should be removed" do

    let(:mail_data) { FactoryGirl.build(:valid_email, invalid_recipients: 'invaild',  recipient_email:'ryan@spreecommerce.com, xyx') }

    it "should check Email format with REGEX" do
      mail_data.should_not be_valid
    end

    it "persist function should return false " do

      mail_to_friend = Spree::MailToFriend.new
      mail_to_friend.persisted?.should be_false

    end

  end


end