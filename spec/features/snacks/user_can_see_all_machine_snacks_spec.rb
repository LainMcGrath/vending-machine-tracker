require 'rails_helper'

RSpec.describe "When a user visits the vending machine index can see all snacks", type: :feature do
  scenario "they see a list of snacks" do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    machine.snacks.create(name: "Oreos", price: 6)
    machine.snacks.create(name: "Fritos", price: 4)

    visit machine_path(sam)

    expect(page).to have_content("Oreos")
    expect(page).to have_content(6)
    expect(page).to have_content("Fritos")
    expect(page).to have_content(4)

    expect(page).to have_content("Average price of snack: 5")


  end

end
