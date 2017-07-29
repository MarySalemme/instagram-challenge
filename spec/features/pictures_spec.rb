require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added yet' do
    scenario 'should display a prompt to add a picture' do
      visit '/pictures'
      expect(page).to have_content 'No pictures yet'
      expect(page).to have_link 'Add picture'
    end
  end
end