require "rails_helper"

RSpec.feature "User visit homepage" do
    scenario "réussi et voir un logo" do
      visit root_path
      expect(page).to have_content "MD"
    end
end
