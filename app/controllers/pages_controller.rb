class PagesController < ApplicationController

  before_action :set_news_items

  def set_news_items
    @news_items = NewsItem.get_recents
  end

  def home
  end

  def pabs_president
  end

  def organizing_committee
  end

  def scientific_committee
  end

  def steering_committee
  end

  def congress
  end

  def history
  end

  def view_the_program
  end

  def visitor_information
  end
end