class ContactsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :require_admin, :only => [:edit, :update, :destroy]   
  	
  # GET /contacts
  # GET /contacts.xml
  def index
    @contacts = Contact.all
    respond_with(@contacts)
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contact = Contact.find(params[:id])
    respond_with(@contact)
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contact = Contact.new
    respond_with(@contact)
  end


  # POST /contacts
  # POST /contacts.xml
  def create
    @contact = Contact.new(params[:contact])
    flash[:notice] = "Contact successfully created" if @contact.save
    ContactMailer.contact_confirmation(@contact).deliver
    respond_with(@contact)
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contact = Contact.find(params[:id]).destroy
    respond_with(@contact)
  end
end
