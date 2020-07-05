def sign_up
      visit new_user_registration_path

      fill_in :user_email, with: 'user@example.com'
      fill_in :user_username, with: 'Liky'
      fill_in :user_password, with: 'password122'
      fill_in :user_password_confirmation, with: 'password122'

    click_button "Sign up"
end
