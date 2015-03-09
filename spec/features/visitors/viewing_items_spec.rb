feature 'Viewing Items' do
  let(:user) {FactoryGirl.create(:user, :admin)}
  
  before do
    signin(user.email, user.password)

    category = FactoryGirl.create(:category, name: "computers")
    manufacturer = FactoryGirl.create(:manufacturer)
    @item = FactoryGirl.create(:item, name: "LaptopPC", manufacturer: manufacturer, category: category)
    visit "/"

  end

  scenario 'view category' do
    expect(page).to have_content 'COMPUTERS'
  end

  scenario 'view item listed' do
    expect(page).to have_content "LaptopPC"
  end

  scenario 'view item' do
    click_link 'LaptopPC'
    expect(page).to have_content @item.name
    expect(page).to have_content @item.description
  end

end
