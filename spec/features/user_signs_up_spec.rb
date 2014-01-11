require 'spec_helper'

  describe 'a user wants to join run with me so they can connect and find runners to train with' do

    # ACCEPTANCE CRITERIA
    # must specify email address
    # must specify password
    # must confirm password
    # must specify distance per week
    # must specify average pace per minute
    # must specify average pace second
    # must specify first name
    # must specify last name
    # must specify time running

  it "should add a user if all the correct information is submitted" do

      user = FactoryGirl.create(:user)

      visit root_path
      click_link "Join"
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.encrypted_password
      fill_in "Password confirmation", :with => user.encrypted_password
      fill_in "Miles Per Week", :with => user.distance_per_week
      fill_in "Minutes", :with => user.average_pace_minute
      fill_in "Seconds", :with => user.average_pace_second
      fill_in "Years Running", :with => user.time_running

      click_button "Join"

      expect(page).to have_content user.first_name
      expect(page).to have_content user.last_name
      expect(page).to have_content "Welcome"
    end
  end