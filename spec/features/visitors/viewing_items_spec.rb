

# # Feature: Navigation links
# #   As a visitor
# #   I want to see navigation links
# #   So I can find home, sign in, or sign up

feature 'Viewing Items', :devise do
  # Scenario: View navigation links
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "home," "sign in," and "sign up"
  category = FactoryGirl.create(:category, name: "computers")
  manufacturer = FactoryGirl.create(:manufacturer)
  # item = FactoryGirl.create(:item)
  let!(:item){ FactoryGirl.create(:item, name: "LaptopPC", manufacturer: manufacturer, category: category) }

  scenario 'view items in computers category' do

    visit "/"
    click_link "Items"
    #click_link "view all"
    expect(page).to have_content item.name
    #expect(page).to have_content 'Sign in'
    #expect(page).to have_content 'Sign up'
  end

end
