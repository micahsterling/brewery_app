class CreateBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.string :type
      t.string :address
      t.string :website
      t.string :state
      t.integer :state_breweries

      t.timestamps
    end
  end
end
