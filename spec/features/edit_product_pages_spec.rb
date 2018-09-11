require 'rails_helper'

describe "able to create product" do
  it "edit existing product" do
    product = Product.create(:name => 'Frog Sausage', :description => 'yummy tidbits', :price => 2.22, :country_origin => 'Jamaica')
    visit products_path
    expect(page).to have_content 'Frog Sausage'
  end

  it "validation disallow blank fields" do
    product = Product.create(:name => 'Frog Sausage', :price => 2.22, :country_origin => 'Jamaica')
    visit products_path
    expect(page).not_to have_content 'Frog Sausage'
  end
end
