class NewsItem < ActiveRecord::Base

  belongs_to :author, :class_name => "User", :foreign_key => :author_id

  def self.get_recents number=3
    order(date: :desc).first(number)
  end

  def text
    if I18n.locale == :en
      return self.text_en
    elsif I18n.locale == :fr
      return self.text_fr
    end
  end

end