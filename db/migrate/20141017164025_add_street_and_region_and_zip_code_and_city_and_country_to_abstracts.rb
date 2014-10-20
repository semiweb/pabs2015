class AddStreetAndRegionAndZipCodeAndCityAndCountryToAbstracts < ActiveRecord::Migration
  def change
    add_column :abstracts, :street, :string
    add_column :abstracts, :region, :string
    add_column :abstracts, :zip_code, :string
    add_column :abstracts, :city, :string
    add_column :abstracts, :country, :string
  end
end
