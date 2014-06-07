class AddImageUrlToGuess < ActiveRecord::Migration
  def change
    add_column :guesses, :image_url, :string
  end
end
