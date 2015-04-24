require_relative './lib/smartphone-view'
require_relative './lib/database-interface'
require_relative './lib/contacts'

class SmartphoneController
	def initialize
		@view = SmartphoneView.new
		@contacts = Contacts.new
	end

	def turn_on
		@view.welcome
	end

	def smartphone_run #LOGIC

	end

	def delete_contact(contact_name)
		@view.delete_contact(contact_name)
		@contacts.delete_contact(contact_name)
	end

	def view
		@view.view_contacts(@contacts)
	end

	def search(name)
		contact = @contacts.search(name)
		@view.display_search_result(contact)
	end

	def turn_off

	end
end

cowphone = SmartphoneController.new
cowphone.turn_on
