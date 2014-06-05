class AddNoAdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :no_ads, :boolean, :default => false, :null => false
  end
end
