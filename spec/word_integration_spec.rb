require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/')
    click_on('Add a new word')
    fill_in('word_name', :with => 'embiggen')
    click_on('Go!')
    expect(page).to have_content('embiggen')
  end
end

describe('edit a word', {:type => :feature}) do
  it('edits a word and then goes to the word page') do
    visit('/')
    click_on('Add a new word')
    fill_in('word_name', :with => 'cromulent')
    click_on('Go!')
    click_on('cromulent')
    click_on('Edit word')
    fill_in('name', :with => 'perfectly cromulent')
    click_on('Update')
    expect(page).to have_content('perfectly cromulent')
  end
end
