class RollBooksController < ApplicationController
  before_action :set_roll_book, only: [:show, :edit, :update, :destroy]

  # GET /roll_books
  # GET /roll_books.json
  def index
    @roll_books = RollBook.all
  end

  # GET /roll_books/1
  # GET /roll_books/1.json
  def show
  end

  # GET /roll_books/new
  def new
    @roll_book = RollBook.new
  end

  # GET /roll_books/1/edit
  def edit
  end

  # POST /roll_books
  # POST /roll_books.json
  def create
    @roll_book = RollBook.new(roll_book_params)

    respond_to do |format|
      if @roll_book.save
        format.html { redirect_to @roll_book, notice: 'Roll book was successfully created.' }
        format.json { render :show, status: :created, location: @roll_book }
      else
        format.html { render :new }
        format.json { render json: @roll_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roll_books/1
  # PATCH/PUT /roll_books/1.json
  def update
    respond_to do |format|
      if @roll_book.update(roll_book_params)
        format.html { redirect_to @roll_book, notice: 'Roll book was successfully updated.' }
        format.json { render :show, status: :ok, location: @roll_book }
      else
        format.html { render :edit }
        format.json { render json: @roll_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roll_books/1
  # DELETE /roll_books/1.json
  def destroy
    @roll_book.destroy
    respond_to do |format|
      format.html { redirect_to roll_books_url, notice: 'Roll book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roll_book
      @roll_book = RollBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roll_book_params
      params.require(:roll_book).permit(:Lecture_Hour, :Student_Id_Number, :Name, :Notes)
    end
end
