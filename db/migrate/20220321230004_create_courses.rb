class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :string
      t.string :dept
      t.string :professor
      t.string :quarter

      t.timestamps
    end
  end
end
