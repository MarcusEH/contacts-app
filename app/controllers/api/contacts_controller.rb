class Api::ContactsController < ApplicationController
  def show
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)

    render 'show.json.jbuilder'
  end

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(first_name: params[input_first_name], last_name: params[input_last_name], email: params[input_email], phone_number: params[input_phone_number])
    @contact.save
    render 'show.json.jbuilder'
  end

  def update 
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)
  end
end
#could have formatted phone_number in a better way