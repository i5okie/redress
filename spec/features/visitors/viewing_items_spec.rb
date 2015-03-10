feature 'Viewing Items' do
  let!(:category) {FactoryGirl.create(:category)}
  let!(:manufacturer) {FactoryGirl.create(:manufacturer)}

  let!(:item) {FactoryGirl.create(:item, manufacturer: manufacturer, category: category)}

  before do
    visit "/"
  end

  scenario 'view category' do
    expect(page).to have_content category.name.upcase
  end

  scenario 'view item listed' do
    expect(page).to have_content item.name
  end

  scenario 'view item' do
    click_link item.name
    expect(page).to have_content item.name
    expect(page).to have_content item.description
  end

end
