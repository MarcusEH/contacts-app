class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.html.erb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      user_id: 1
    )
    @contact.save!
    redirect_to "/contacts/#{@contact.id}"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.middle_name = params[:middle_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    @contact.bio = params[:bio]
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end
end
