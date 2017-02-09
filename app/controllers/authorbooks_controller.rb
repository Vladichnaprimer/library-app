class AuthorbooksController < ApplicationController

  before_action: :set_authorbook, only: [:show]

  def index
    @author_books = Authorbook.all
    @authors = Author.all
    @books = Book.all
  end

  def show
  end

  private

    def set_authorbook
      @author_book= Authorbook.find(params[:id])
    end

    def book_params
      params.require(:authorbook).permit(:author_id, :book_id)
    end
end
