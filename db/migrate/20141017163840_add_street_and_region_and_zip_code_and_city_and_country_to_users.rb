class AddStreetAndRegionAndZipCodeAndCityAndCountryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :street, :string
    add_column :users, :region, :string
    add_column :users, :zip_code, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
