json.array!(@roll_books) do |roll_book|
  json.extract! roll_book, :id, :Lecture_Hour, :Student_Id_Number, :Name, :Notes
  json.url roll_book_url(roll_book, format: :json)
end
