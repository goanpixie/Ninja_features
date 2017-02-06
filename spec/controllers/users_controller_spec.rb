
require "rails_helper"
describe "Register" do
  it "prompts for the user fields" do
    visit "/"
    expect(page).to have_field('name')
    expect(page).to have_field('description')

  end
  it "creates user and redirects to user's page" do
    visit "/"
    fill_in "name", with: "Luke"
    fill_in "description", with: "Skywalker"

    click_button "Register"
    user = User.last
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content("User Successfully created!")
  end
end
