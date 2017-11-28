class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.float :donation_amount
      t.integer :amount_remaining
      t.integer :gift_id
      t.integer :project_id
      t.index ["gift_id"], name: "index_rewards_on_gift_id"
      t.index ["project_id"], name: "index_rewards_on_project_id"

      t.timestamps
    end
  end
end
