class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)

        if @contact.save
#            redirect_to  action: 'new', notice: 'Your Inquiry Registration Completed.'
            redirect_to controller: 'contacts', action: 'action'
        else
            render 'new'
        end
    end
    
    def action
    end
    
    def contact_params
        params.require(:contact).permit(:name, :mail_address, :inquiry)
    end
end


