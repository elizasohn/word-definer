require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    save_and_open_page
    click_on('Add a new word')
    fill_in('word_name', :with => 'embiggen')
    click_on('Go!')
    expect(page).to have_content('embiggen')
  end
end
