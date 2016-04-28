class CreateCourseActivities < ActiveRecord::Migration
  def change
    create_table :course_activities do |t|
      t.references :course
      t.references :activity
      t.timestamps null: false
    end
    add_index :course_activities, ["course_id", "activity_id"]
  end
end
