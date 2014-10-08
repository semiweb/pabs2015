class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.datetime :date
      t.text :text
      t.references :author
    end
  end
end
