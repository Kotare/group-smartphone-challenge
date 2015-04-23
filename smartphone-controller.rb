require_relative './lib/smartphone-view'
require_relative './lib/database-interface'
require_relative './lib/contacts'

class SmartphoneController
	def initialize
		@view = SmartphoneView.new
		@contacts = Contacts.new
	end

	def turn_on


	end

	def smartphone_run #LOGIC

	end

	def delete_contact(contact_name)
		@view.delete_contact(contact_name)
		@contacts.delete_contact(contact_name)
	end

	def turn_off

	end
end

cowphone = SmartphoneController.new
cowphone.turn_on
