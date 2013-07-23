require 'spec_helper'

describe Spree::EmailSenderController do



  context  "search Suggestions" do
    let(:product) {create(:product, name: "apache baseball cap", sku: "A100")}
    let(:mail_data) { FactoryGirl.build(:valid_email) }
    before do

      visit spree.product_path(product)
      click_link "Email a friend"

    end

    it "should throw error on empty form submission" do

      click_button "Tell your friend!"
      page.should have_content "There were problems with the following fields:"

    end

    it "should send email to friend" do


      fill_in "mail_to_friend_sender_name", with: "Ryan"
      fill_in "mail_to_friend_sender_email", with: "ryan@spreecommerce.com"
      fill_in "mail_to_friend_recipient_name", with: "Ryan Bigg"
      fill_in "mail_to_friend_recipient_email", with: "ryan@spreecommerce.com"
      fill_in "mail_to_friend_message", with: "Hi, there."
      click_button "Tell your friend!"
      current_path.should == spree.product_path(product)
      #save_and_open_page
    end


  end


end




