class AddOwnerIdToProjs < ActiveRecord::Migration
  def change
    add_column :projs, :user_id, :integer
  end
end
