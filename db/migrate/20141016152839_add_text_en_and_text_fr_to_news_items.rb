class AddTextEnAndTextFrToNewsItems < ActiveRecord::Migration
  def change
    add_column :news_items, :text_en, :text
    add_column :news_items, :text_fr, :text
  end
end
