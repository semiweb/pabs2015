class RemoveTitleFromNewsItems < ActiveRecord::Migration
  def change
    remove_column :news_items, :title
  end
end
