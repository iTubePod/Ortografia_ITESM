class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :chapter
      t.text :instruction
      t.string :desc
      t.string :attachments
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
