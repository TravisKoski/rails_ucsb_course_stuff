class AddCourseIdToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :Course, null: false, foreign_key: true
  end
end
