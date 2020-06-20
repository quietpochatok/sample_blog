class ContactsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    #вывод введенных данных в хэш
    # render plain: params[:contact].inspect
    #######################################
    #создание объекта с параметрами из браузера, бех сохранения
    @contact = Contact.new(contact_params)
    @contact.save
  end

  #метод для безопасного передачи введенных данных пользователем
  private
    def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
    end
  
end
