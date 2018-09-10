require 'rails_helper'
require 'interactive_debug_session'

describe "create product" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    interactive_debug_session
    fill_in 'name', :with => 'Tree Frog Pizza'
    fill_in 'description', :with => 'a lovely pizza with tasty tree frogs'
    click_on 'Create Product'
    expect(page).to have_content 'Tree Frog Pizza'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
