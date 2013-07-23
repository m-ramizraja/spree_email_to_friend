require 'spec_helper'

describe Spree::EmailSenderController do
  context "controller instance" do
    it "use Spree::EmailSenderController" do
      controller.should be_an_instance_of Spree::EmailSenderController
    end
  end


  context "#send_mail" do

    let(:product) { create(:product, name: "test") }
    before(:each) do
      visit spree.product_path(product)
    end
    it "Should have produt_path" do

      page.should  have_content("Email a friend")

    end

    it " should have Email to  friend Link " do

      page.find_link ("Email a friend")["/email_to_friend/product/test"]
      #click_link "Email a friend"
      save_and_open_page

    end

  end

end




