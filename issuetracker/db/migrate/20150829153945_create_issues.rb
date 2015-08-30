class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.text :title
      t.integer :createdby
      t.integer :assignee
      t.integer :votes
      t.text :milestone
      t.string :status
      t.text :description
      t.boolean :setting
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
