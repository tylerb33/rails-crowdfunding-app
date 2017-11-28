class AddMinimumDonationToGifts < ActiveRecord::Migration[5.1]
  def change
    add_column :gifts, :minimum_donation, :float
  end
end
