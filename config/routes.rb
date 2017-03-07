Rails.application.routes.draw do
  get '/first-contact' => 'contacts#first_contact'
  get '/contacts-list' => 'contacts#contacts_list'
end
