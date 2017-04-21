
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
# test#1
describe('String#anagrams', {:type => :feature}) do
  it('processes the user entry and confirms if the word(s) are anagrams') do
    visit('/')
    fill_in('anagrams1', :with => 'bob')
    fill_in('anagrams2', :with => 'john')
    click_button('Send')
    expect(page).to have_content('These are not anagrams')
  end
end
