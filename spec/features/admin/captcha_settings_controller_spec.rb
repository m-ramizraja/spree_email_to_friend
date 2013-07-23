require 'spec_helper'

describe Spree::Admin::CaptchaSettingsController do
  stub_authorization!

  context "#update" do

    before  "should visit admin pannel" do
      visit spree.admin_path

      click_link "Configuration"
    end

    it "should display Captcha Settings on front end" do

      page.should have_content "Captcha Settings"

      click_link "Captcha Settings"
      choose('Yes')
      click_button "Update"
      find_field('Yes').value.should_not be_blank

    end

    it "should not display Captcha Settings on front end "  do

      click_link "Captcha Settings"
      choose('No')
      click_button "Update"
      find_field('No').value.should_not be_blank
    end



  end
end


