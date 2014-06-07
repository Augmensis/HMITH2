module Zoopla
  module Listings
    module Listing
      def by_id(listing_id)
        ensure_valid_parameter('listing id', listing_id, lambda {|k| k.is_a? Fixnum and k >= 0})
        @request[:listing_id] = listing_id
        self
      end
    end
  end
end

module Listing

  def self.random_for(user)
    data = api.houses.in(postcode: 'WR2 4JH').within(50).order_by(:age)
    if data.to_s.exclude? '<h1>Developer Over Rate</h1>'
      guessed = user.guesses.pluck(:listing_id)
      sales = []
      data.each do |item|
        sales << item unless guessed.member?(item.listing_id)
        break if (0 == sales.size % 10) && sales.size > 1
      end
      sales.shuffle.first
    else
      false
    end
  end

  def self.by_id(listing_id)
    list = []
    api.by_id(listing_id).each {|item| list << item }
    list.first
  end

  def self.api
    data = Zoopla::Listings::Sales.new(ENV['ZOOPLA_KEY'])
  end
end
