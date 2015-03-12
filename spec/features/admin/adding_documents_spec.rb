feature 'Adding documents to items' do
  let(:user) { FactoryGirl.create(:user, :admin) }
  let!(:category) { FactoryGirl.create(:category) }
  let!(:manufacturer) { FactoryGirl.create(:manufacturer) }
  let!(:item) { FactoryGirl.create(:item, category: category, manufacturer: manufacturer) }

  before do
    signin(user.email, user.password)
    visit admin_root_path
  end

  scenario 'with valid information', js: true do
    visit admin_items_path
    expect(page).to have_content 'Items'

    find(".fa-plus").click

    expect(page).to have_content "NEW ITEM"

    fill_in "Name", with: "New Item 3000"
    # page.select 'Category'
    select category.name, from: 'item_category_id'
    # fill_in "Manufacturer", with: manufacturer.name
    fill_in "Modelname", with: "NI3000a"
    select manufacturer.name, from: 'item_manufacturer_id'
    fill_in "item_description", with: "This is an amazing item, it's great that you have it!"
    click_button 'Save'
    expect(page).to have_content 'Item has been created.'
  end
end
