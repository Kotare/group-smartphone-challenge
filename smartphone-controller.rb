require_relative './lib/smartphone-view'
require_relative './lib/database-interface'
require_relative './lib/contacts'
require_relative './lib/contact'

class SmartphoneController
	def initialize
		@view = SmartphoneView.new
		@contacts = Contacts.new
		@view.welcome
		answer_loop
	end

	def answer_loop
		while true
			current_answer = @view.get_answer
			puts current_answer
			case current_answer
			when 'add'
				add_contact
			when 'edit'
				edit_contact
			when 'delete'
				delete_contact
			when 'view'
				view
			when 'search'
				search
			when 'turn off'
				@view.exit
				exit
			else
				@view.input_error
			end
		end
	end

	def add_contact
		print "name:"
		contact_name = gets.chomp
		print "number:"
		contact_number = gets.chomp
		@contacts.add_contact(contact_name, contact_number)
		@view.add_contact(contact_name, contact_number)
	end

	def edit_contact
		@contacts.edit_contact(@view.edit_contact)
	end


	def delete_contact
			@contacts.delete_contact(@view.delete_contact)
	end

	def view
		@view.view_contacts(@contacts)
	end

	def search
		name = gets
		contact = @contacts.search(name)
		if (contact)
			@view.display_search_result(contact)
		else
			@view.input_error
		end
	end
end

cowphone = SmartphoneController.new

