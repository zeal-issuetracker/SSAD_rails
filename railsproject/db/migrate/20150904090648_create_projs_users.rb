class CreateProjsUsers < ActiveRecord::Migration
  def change
    create_table :projs_users do |t|
    	t.integer :proj_id
    	t.integer :user_id
    end

     add_index :projs_users, [ :proj_id, :user_id ], :unique => true
  end
end
