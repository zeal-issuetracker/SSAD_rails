class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.integer :assignee
      t.integer :votes
      t.text :milestone
      t.integer :status
      t.boolean :settings
      t.integer :user_id
      t.integer :proj_id

      t.timestamps null: false
    end
  end
end
