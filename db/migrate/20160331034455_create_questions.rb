class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :corr_ans
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
