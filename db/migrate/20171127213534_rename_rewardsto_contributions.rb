class RenameRewardstoContributions < ActiveRecord::Migration[5.1]
  def change
  	rename_table :rewards, :contributions
  end
end
