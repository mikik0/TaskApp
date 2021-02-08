class Task < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.datetime :deadline
      t.string :user_id
      t.integer :status

      t.timestamps
    end
  end
end
