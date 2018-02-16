require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack1 = dons.snacks.create(name: "White Castle Burger", price: 350)
    snack2 = dons.snacks.create(name: "Pop Rocks", price: 150.0)

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack1.to_dollar)
    expect(page).to have_content(snack2.name)
    expect(page).to have_content(snack2.to_dollar)
    expect(page).to have_content(dons.snacks.average_price)
  end
end
