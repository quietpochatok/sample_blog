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
      #при командах 14,15 в visitor_create_contact_spec.rb
      #при ручном заполнении
      #данные успешно отправляются и сохраняются
      #but 'rake spec' выходит следующая ошибка
      # Failure/Error: @contact = Contact.new(contact_params)
      #ActiveModel::UnknownAttributeError:
      #unknown attribute 'email' for Contact. 
      # params.require(:contact).permit(:name, :phone, :email, :message)
      params.require(:contact).permit(:name, :phone)
      end
    
  end
