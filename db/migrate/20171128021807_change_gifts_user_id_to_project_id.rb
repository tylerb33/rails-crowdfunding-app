class ChangeGiftsUserIdToProjectId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :gifts, :user_id, :project_id
  end
end
