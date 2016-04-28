# This migration comes from rapidfire (originally 20130502170733)
class CreateRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    create_table :rapidfire_question_groups do |t|
      t.string  :name
      t.references :activity, index: true, foreign_key: true
      t.timestamps
    end
  end
end
