
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
# test#1
describe('String#anagrams', {:type => :feature}) do
  it('processes the user entry and confirms if the word(s) are anagrams') do
    visit('/')
    fill_in('anagrams1', :with => 'Astronomer')
    fill_in('anagrams2', :with => 'Moon starrer')
    click_button('Send')
    expect(page).to have_content('These are anagrams')
  end
end
