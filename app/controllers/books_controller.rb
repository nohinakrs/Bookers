class ListsController < ApplicationController
  def new
      @books = Books.new
  end

  def create
    @books = books.new(books_params)
    if @books.save
      flash[:notice] = "success"
      redirect_to books_path(@books.id)
    else
      flash.now[:alert] = "error" 
      render :new
    end
  end

  def index
    @books = Books.all
  end

  def edit
    @books = books.find(params[:id])
  end

  def update
    books = Books.find(params[:id])
    books.update(books_params)
    redirect_to books_path(books.id)  
  end

  def destroy
    books = books.find(params[:id])  
    books.destroy 
    redirect_to '/books/index'  
  end

  private

  # ストロングパラメータ
  def books_params
    params.require(:books).permit(:title, :body, :image)
  end
end
