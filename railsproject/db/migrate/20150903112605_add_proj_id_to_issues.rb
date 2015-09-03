class AddProjIdToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :proj_id, :integer
  end
end
