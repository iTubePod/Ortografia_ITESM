class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
      t.references :user
      t.references :course
      t.timestamps null: false
    end
    add_index :user_courses, ["user_id", "course_id"]
  end
end
