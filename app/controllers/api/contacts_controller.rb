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
    @contact = Contact.new(
      first_name: params[:input_first_name],
     middle_name: params[:input_middle_name],
     last_name: params[:input_last_name],
     email: params[:input_email],
     phone_number: params[:input_phone_number],
     bio: params[:input_bio])
    @contact.save
    render 'show.json.jbuilder'
  end

  def update 
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)
    #@contact = Contact.find(params[id:]) works too as a shortcut
    @contact.first_name = params[:input_first_name]
    @contact.last_name = params[:input_last_name]
    @contact.middle_name = params[:input_middle_name]
    @contact.email = params[:input_email]
    @contact.phone_number = params[:input_phone_number]
    @contact.bio = params[:bio]
    @contact.save
    render 'show.json.jbuilder'
  end

  def destroy 
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)
    @contact.destroy
    render 'destroy.json.jbuilder'
  end
end
#could have formatted phone_number in a better way