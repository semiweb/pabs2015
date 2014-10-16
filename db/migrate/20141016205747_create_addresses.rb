class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :region
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :name
      t.references :parent
    end
  end
end
