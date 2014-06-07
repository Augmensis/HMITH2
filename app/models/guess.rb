class Guess < ActiveRecord::Base
  belongs_to :user

  attr_accessor :price

  before_create :check_price

  def check_price
    if listing = Listing.by_id(listing_id)
      self.image_url = listing.image_url
      self.listing_price = listing.price
      self.successful = true if listing.price == price.to_i
    end
  end
 
  
end
