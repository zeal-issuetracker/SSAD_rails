class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :owner
      t.text :members

      t.timestamps null: false
    end
  end
end
