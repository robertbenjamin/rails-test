require 'rails_helper'

feature 'Visitor views index' do
  scenario 'and sees posts' do
    visit posts_path

    expect(page).to have_content 'All Posts'
  end
end
