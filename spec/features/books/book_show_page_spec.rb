require 'rails_helper'

describe "User visits books index page" do
  before(:each) do
    @book_1 = Book.create(title: 'new book', id: 1)
    @user_1 = @book_1.users.create(name: 'Jeff', id: 1)
    @user_2 = @book_1.users.create(name: 'Craig', id: 2)
    @review_1 = @user_1.reviews.create(review: 'great book')
    @review_2 = @user_1.reviews.create(review: 'bad book')
  end
  scenario 'sees all book titles' do
    visit book_path(@book_1)

    expect(current_path).to eq(book_path(@book_1))

    expect(page).to have_content()
  end
end
