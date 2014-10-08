class NewsItem < ActiveRecord::Base

  belongs_to :author, :class_name => "User", :foreign_key => :author_id

  def self.get_recents number=3
    order(:date).first(number)
  end

end