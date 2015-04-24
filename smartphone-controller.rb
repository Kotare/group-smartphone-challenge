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

	def edit_contact
		@contacts.edit_contact(@view.edit_contact)
	end

	def turn_off

	end
end

cowphone = SmartphoneController.new
cowphone.turn_on