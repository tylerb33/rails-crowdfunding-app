class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.integer :user_id
      t.string :account_number
      t.string :title

      t.timestamps
    end
  end
end
