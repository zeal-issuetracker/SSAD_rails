class CreateProjs < ActiveRecord::Migration
  def change
    create_table :projs do |t|
      t.string :title
      t.text :description
      t.integer :owner
      t.boolean :settings
      t.text :members

      t.timestamps null: false
    end
  end
end
