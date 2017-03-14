class ContactsController < ApplicationController
  
  def home
    render "home.html.erb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end
  
  def new
    render "new.html.erb"
  end

  def create
    @contact = Contact.new(
    first_name: params['form_first_name'],
    last_name: params['form_last_name'],
    email: params['form_email'],
    phone_number: params['form_phone_number']
    )
    flash[:success] = "You have created a new contact."
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end
  
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
    first_name: params['form_first_name'],
    last_name: params['form_last_name'],
    email: params['form_email'],
    phone_number: params['form_phone_number'].to_i
    )

    flash[:warning] = "You have edited a contact."
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy

    flash[:danger] = "You have deleted a contact."
    redirect_to "/contacts"
  end

end
