require "rails_helper"

feature "Account Creation" do

  scenario "allows a guest to create acoount" do
    visit new_user_registration_path

      fill_in :user_email, with: 'user@example.com'
      fill_in :user_username, with: 'Liky'
      fill_in :user_password, with: 'password122'
      fill_in :user_password_confirmation, with: 'password122'

    click_button "Sign up"

    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
  
end