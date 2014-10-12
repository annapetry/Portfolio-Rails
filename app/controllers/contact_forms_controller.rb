class ContactFormsController < ApplicationController
  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    if @contact_form.deliver
      flash[:notice] = "Thank you for your message - I'll be in touch soon!"
      redirect_to root_url
    else
      flash[:notice] = 'Oh no - something went wrong! Try again!'
      redirect_to '/#contact'
    end
  end
end
