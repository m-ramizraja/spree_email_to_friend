require 'spec_helper'

describe Spree::EmailSenderController do
  context "controller instance" do
    it "use Spree::EmailSenderController" do
      controller.should be_an_instance_of Spree::EmailSenderController
    end
  end

  context "#send_mail" do
  end
end
