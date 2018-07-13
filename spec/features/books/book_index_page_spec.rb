require 'rails_helper'

describe "User visits books index page" do
  before(:each) do
    @book_1 = Book.create(title: 'new book')
    @book_2 = Book.create(title: 'old book')
  end
  scenario 'sees all book titles' do
    visit books_path

    expect(current_path).to eq(books_path)

    within ".books" do
      expect(page).to have_content(@book_1.title)
      expect(page).to have_content(@book_2.title)
    end

    # click_link @book_1.title
    # expect(current_path).to eq(book_path(@book_1))
  end
end
