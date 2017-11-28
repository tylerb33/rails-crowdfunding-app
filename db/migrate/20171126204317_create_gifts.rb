class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.index ["user_id"], name: "index_gifts_on_user_id"

      t.timestamps
    end
  end
end
