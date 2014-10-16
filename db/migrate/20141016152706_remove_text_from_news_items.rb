class RemoveTextFromNewsItems < ActiveRecord::Migration
  def change
    remove_column :news_items, :text
  end
end
