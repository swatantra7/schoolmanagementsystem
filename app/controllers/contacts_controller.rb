class ContactsController < ContactUs::ContactsController 

  def new
    @contact = ContactUs::Contact.new
    render 'contact_us/contacts/new_simple_form'
  end

  def create
    @contact = ContactUs::Contact.new(params[:contact_us_contact])
    if @contact.save
      flash[:success] = t('.query_has_been_sent_successfully')
      render 'contact_us/contacts/success'
    else
      flash[:error] = t('contact_us.notices.error')
      render 'contact_us/contacts/new_simple_form'
    end
  end

end