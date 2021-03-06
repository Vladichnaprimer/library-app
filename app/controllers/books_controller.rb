class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
    @categories = Category.all.order('name ASC')
  end


  def show
    @books = Book.all
    @categories = Category.all
    @authors = Author.all
    @author_books = Authorbook.all
  end


  def new
    @book = Book.new
    @category = Category.new
    @author = Author.new

    @all_authors = Author.all
    @author_book = Authorbook.new
    @author_book = @book.authorbooks.build
  end

  def edit
    @all_authors = Author.all
    @author_book = @book.authorbooks.build
  end

  def create
    @author_book = Authorbook.new
    @book = Book.new(book_params)
    params[:authors][:id].each do |author|
      if !author.empty?
          @book.authorbooks.build(:author_id => author)
      end
    end

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:name, :description, :image_url, :category_id, :format, :year, :pages, :publisher)
    end
end
