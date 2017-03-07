class ContactsController < ApplicationController
  def first_contact
    @contact = Contact.first
    render "first_contact.html.erb"
  end

  def contacts_list
    render "contacts_list.html.erb"
  end
end
