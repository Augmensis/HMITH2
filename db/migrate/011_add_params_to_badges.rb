class AddParamsToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :description, :string
    add_column :badges, :image_url, :string
  end
end
