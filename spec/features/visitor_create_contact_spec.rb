require "rails_helper"

feature "Contact Creation" do
  scenario "allows accees to contacts page" do 
    visit '/contacts'

    expect(page).to have_content I18n.t 'contacts.contact_us'
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'
      fill_in :contact_name, with: "aa&bb"
      fill_in :contact_phone, with: "8888888"
      # fill_in :contact_email, with: "8888888"
      # fill_in :contact_message, with: "8888888"


    click_button "Send message"

    expect(page).to have_content('Thank you')
  end
  
end