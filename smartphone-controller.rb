require_relative './lib/smartphone-view'
require_relative './lib/database-interface'
require_relative './lib/contacts'

class SmartphoneController
	def initialize
		@view = SmartphoneView.new
		#@contacts = Contacts.new
		@view.welcome
		answer_loop
	end

	def call_answer

	end

	def answer_loop
		current_answer = @view.get_answer
		puts current_answer
		case current_answer
		when 'add'
			add_contact
			p "hello"
		when 'edit'

		when 'delete'


		end

	end

	 def add_contact
		@view
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

