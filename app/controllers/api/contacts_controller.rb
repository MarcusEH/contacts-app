class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.first

    render 'first_contact_view.json.jbuilder'
  end

  def all_contacts
    @contacts = Contact.all
    render 'all_contacts_view.json.jbuilder'
  end
end
#could have formatted phone_number in a better way