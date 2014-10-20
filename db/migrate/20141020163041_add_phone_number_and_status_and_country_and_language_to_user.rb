class AddPhoneNumberAndStatusAndCountryAndLanguageToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :users, :status, :string
    add_column :users, :country_type, :string
    add_column :users, :language, :string
  end
end
