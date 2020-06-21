  class ContactsController < ApplicationController
    def index
    end
    
    def new
    end

    def create
      #вывод введенных данных в хэш
      # render plain: params[:contact].inspect
      #######################################
      #создание объекта с параметрами из браузера с сохранением
      @contact = Contact.new(contact_params)
        if @contact.valid?
            @contact.save
          else
            render action: 'new'
        end
    end

    #метод для безопасного передачи введенных данных пользователем
    #нужно для @contact в следствии обновлении разработчиков руби
    private
      def contact_params
      params.require(:contact).permit(:name, :phone, :email, :message)
      end
    
  end
