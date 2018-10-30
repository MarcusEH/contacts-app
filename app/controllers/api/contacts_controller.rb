class Api::ContactsController < ApplicationController
  before_action :authenticate_user
  def show
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)
    if @contact.user_id == current_user.id
      render 'show.json.jbuilder'
    else
      render json: {message: "you are not authorized to view this contact"}
    end
  end

  def index
    #@contacts = Contact.where(user_id: current_user.id)
    if current_user
      @contacts = current_user.contacts
    else
      @contacts = []
    end
    #line 16 is better than line 14
    render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params[:input_first_name],
      middle_name: params[:input_middle_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number],
      bio: params[:input_bio],
      user_id: current_user.id
    )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update 
    input_id = params[:id]
    @contact = Contact.find_by(id: input_id)
    #@contact = Contact.find(params[id:]) works too as a shortcut
    @contact.first_name = params[:input_first_name] || @contact.first_name
    @contact.last_name = params[:input_last_name]  || @contact.last_name
    @contact.middle_name = params[:input_middle_name] || @contact.middle_name
    @contact.email = params[:input_email] || @contact.email
    @contact.phone_number = params[:input_phone_number] || @contact.phone_number
    @contact.bio = params[:input_bio] || @contact.bio
    @contact.user_id = current_user.id
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