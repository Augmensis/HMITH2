class AddListingPriceToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :listing_price, :integer
  end
end
