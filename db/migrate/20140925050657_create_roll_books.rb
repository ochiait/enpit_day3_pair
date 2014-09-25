class CreateRollBooks < ActiveRecord::Migration
  def change
    create_table :roll_books do |t|
      t.string :Lecture_Hour
      t.string :Student_Id_Number
      t.string :Name
      t.text :Notes

      t.timestamps
    end
  end
end
