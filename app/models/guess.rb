class Guess < ActiveRecord::Base
  belongs_to :user

  attr_accessor :price

  before_create :check_price

  def check_price
    if listing = Listing.by_id(listing_id)
      self.image_url = listing.image_url
      self.listing_price = listing.price
      self.num_bathrooms = listing.num_bathrooms
      self.num_bedrooms = listing.num_bedrooms
      self.num_floors = listing.num_floors
      self.num_recepts = listing.num_recepts
      self.street_name = listing.street_name
      
      if listing.short_description.length == 0
        self.short_description = "None Provided"
      else
        self.short_description = listing.short_description.truncate(150)
      end
      
      self.successful = true if listing.price == price.to_i
    end
  end
 
  
end
