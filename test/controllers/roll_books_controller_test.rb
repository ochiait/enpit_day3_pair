require 'test_helper'

class RollBooksControllerTest < ActionController::TestCase
  setup do
    @roll_book = roll_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roll_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roll_book" do
    assert_difference('RollBook.count') do
      post :create, roll_book: { Lecture_Hour: @roll_book.Lecture_Hour, Name: @roll_book.Name, Notes: @roll_book.Notes, Student_Id_Number: @roll_book.Student_Id_Number }
    end

    assert_redirected_to roll_book_path(assigns(:roll_book))
  end

  test "should show roll_book" do
    get :show, id: @roll_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roll_book
    assert_response :success
  end

  test "should update roll_book" do
    patch :update, id: @roll_book, roll_book: { Lecture_Hour: @roll_book.Lecture_Hour, Name: @roll_book.Name, Notes: @roll_book.Notes, Student_Id_Number: @roll_book.Student_Id_Number }
    assert_redirected_to roll_book_path(assigns(:roll_book))
  end

  test "should destroy roll_book" do
    assert_difference('RollBook.count', -1) do
      delete :destroy, id: @roll_book
    end

    assert_redirected_to roll_books_path
  end
end
