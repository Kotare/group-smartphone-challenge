require_relative './lib/smartphone-view'
require_relative './lib/database-interface'
require_relative './lib/contacts'
require_relative './lib/contact'

class SmartphoneController
	def initialize
		@view = SmartphoneView.new
		@contacts = Contacts.new
	end

	def turn_on 
		

	end

	def smartphone_run #LOGIC

	end

	def edit_contact
		@contacts.edit_contact(@view.edit_contact)
	end

	def delete_contact(contact_name)
		if @contact_list.include?(contact_name)
			@view.delete_contact(contact_name)
			@contacts.delete_contact(contact_name)
		else 
			@view.contact_error(contact_name)
		end
	end

	def view
		@view.view_contacts(@contacts)
	end

	def turn_off

	end
end

cowphone = SmartphoneController.new
cowphone.turn_on
