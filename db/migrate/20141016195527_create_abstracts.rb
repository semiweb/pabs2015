class CreateAbstracts < ActiveRecord::Migration
  def change
    create_table :abstracts do |t|
      t.text :text, :limit => 450
      t.string :title
      t.string :authors
      t.string :category
      t.references :address
      t.references :author
    end
  end
end
