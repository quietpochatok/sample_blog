class ContactsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    render plain: params[:contact].inspect
  end
  
end
