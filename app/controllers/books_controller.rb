class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])


  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def update
  @book = Book.find(params[:id])
  @book.update(book_params)
  redirect_to book_path(@book.id)
  end



  def edit
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

    private

  def book_params
    params.require(:book).permit(:title,:body)
  end

end
