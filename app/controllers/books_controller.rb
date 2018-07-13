class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:users)
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.includes(:users).find(params[:id])
  end

  def create
    @book = Book.create(book_params)
  end

  private
  def book_params
    params.require(:book).permit(:title)
  end
end
