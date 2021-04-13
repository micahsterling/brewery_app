class AddsLatLongColumnsToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :latitude, :float
    add_column :breweries, :longitude, :float
  end
end
