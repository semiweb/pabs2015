class AbstractsController < ApplicationController

  def new
    @abstract = Abstract.new
    @address  = Address.new
  end


  def create
    abstract = Abstract.new(abstract_params)
    if abstract.save
      flash[:success] = t('abstract.successful_creation')
    else
      flash[:error] = abstract.errors.full_messages
    end
    redirect_to action: :new
  end


  def abstract_params
    params.require(:abstract).permit(:author_id, :title, :text, :authors, :street, :region, :zip_code, :city, :country, :name, :category)
  end
end