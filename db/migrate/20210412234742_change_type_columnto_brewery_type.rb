class ChangeTypeColumntoBreweryType < ActiveRecord::Migration[6.1]
  def change
    rename_column :breweries, :type, :brewery_type 
  end
end
