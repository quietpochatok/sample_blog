require "rails_helper"

feature "Article Creation" do
  before(:each) do 
    sign_up
  end
  scenario "allows a user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New article'
    #expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
  
end
