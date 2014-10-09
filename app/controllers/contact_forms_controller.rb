class ContactFormsController < ApplicationController
  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    if @contact_form.deliver
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to root_url
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to root_url
    end
  end
end
