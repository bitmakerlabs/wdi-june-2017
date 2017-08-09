require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest

  test 'an index of pages can be viewed' do
    # Arrange
    Page.create!(title: 'About', slug: 'about', content: 'Donald Trump Fan Club')
    Page.create!(title: 'Obama', slug: 'obama', content: 'Obama Trump Fan Club')

    # Act
    visit '/pages'

    # Assert
    assert_text 'About'
    assert_text 'Obama'
  end

  test 'a single page can be viewed' do

    Page.create!(title: 'About', slug: 'about', content: 'Donald Trump Fan Club')

    visit '/about'
    # assert_text 'About
    assert_selector 'h1', text: 'About'
    assert_text 'Donald Trump Fan Club'
  end

  test 'a page can be created' do
    visit '/pages/new'
    fill_in :page_title, with: 'Mina Fan Club'
    fill_in :page_content, with: 'Very Exclusive'
    fill_in :page_slug, with: 'mina-mina'
    click_on 'Create Page'

    visit '/mina-mina'
    assert_text 'Very Exclusive'

  end

  # test 'a page can be updated' do

  # end

  # test 'a page can be deleted' do

  # end

end
