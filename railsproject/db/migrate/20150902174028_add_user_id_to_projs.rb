class AddUserIdToProjs < ActiveRecord::Migration
  def change
    add_column :projs, :owner_id, :integer
  end
end
