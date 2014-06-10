class AddStatsToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :num_bathrooms, :integer
    add_column :guesses, :num_bedrooms, :integer
    add_column :guesses, :num_floors, :integer
    add_column :guesses, :num_recepts, :integer
    add_column :guesses, :street_name, :string
    add_column :guesses, :short_description, :string
  end
end
