class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render "index"
  end
end
