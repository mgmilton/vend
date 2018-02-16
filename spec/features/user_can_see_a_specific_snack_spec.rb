require "rails_helper"

describe "As a user" do
describe "When I visit a specific snack page" do
 it "has metrics on that snack" do
   owner = Owner.create(name: "Sam's Snacks")
   dons  = owner.machines.create(location: "Don's Mixed Drinks")
   owner_2 = Owner.create(name: "Test")
   snack1 = dons.snacks.create(name: "White Castle Burger", price: 350)

   visit snack_path(snack1)

   expect(page).to have_content(snack1.name)
   expect(page).to have_content(snack1.to_dollar)
   expect(page).to have_content("Don's Mixed Drinks")
 end
end
end
