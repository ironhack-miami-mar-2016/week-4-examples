class FavoritesController < ApplicationController
  def create
    # <input type="hidden" name="contact_id"
    contact_id = params[:contact_id]
    the_contact = Contact.find_by(id: contact_id)

    the_contact.favorite = true
    the_contact.save

    redirect_to("/contacts")
  end
end
