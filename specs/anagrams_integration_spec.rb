
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
# test#1
describe('anagrams result path', {:type => :feature}) do
  it('processes the user entry and confirms if the word(s) are anagrams') do
    visit('/')
    fill_in('anagram_form', :with => 'ruby')
    click_button('Send')
    expect(page).to have_content('These are anagrams')
  end
end
