feature 'Viewing Items' do
  let(:user) {FactoryGirl.create(:user, :admin)}
  let(:category) {FactoryGirl.create(:category)}
  let(:manufacturer) {FactoryGirl.create(:manufacturer)}

  let(:item) {FactoryGirl.create(:item, manufacturer: manufacturer, category: category)}

  before do
    signin(user.email, user.password)
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
