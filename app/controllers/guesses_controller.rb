class GuessesController < ApplicationController
  before_action :require_login

  def index
    @guesses = current_user.guesses.order('id DESC')
  end

  def new
    @listing = Listing.random_for current_user
    if @listing != false
      master_price = @listing.price
      prices = [master_price]
      2.times { prices << master_price.send((rand < 0.5 ? :+ : :-), master_price * ((rand * 40).to_i / 100.0)).to_i }
      prices.shuffle!
      @guesses = prices.collect do |price|
        @guess = Guess.new listing_id: @listing.listing_id, price: price
      end
    else
      redirect_to error_url
    end
  end

  def create
    guess = current_user.guesses.create(guess_params)
    if guess.successful  
      redirect_to root_url, notice: 'Well Done! You got it right!'
    else
      redirect_to root_url, notice: 'Unlucky! You were wrong... :('
    end
  end
  
  def fix
    if current_user.admin == true
      #fix stuff
      Guess.all.reverse.each do |fix|
        if listing = Listing.by_id(fix.listing_id)
          fix.listing_price = listing.price
          fix.image_url = listing.image_url
          fix.save!
        end
      end
      redirect_to root_url, notice: 'Guess data has now been updated'
    else
      redirect_to root_url, notice: 'You are not an administrator'
    end
  end
  
  
  private

    def guess_params
      params.require(:guess).permit(:listing_id, :price, :image_url)
    end
end
