class SmartphoneView

	def welcome
    puts "Welcome to COW PHONE!"
    puts "\nWhat would you like to do today? type 'add', 'edit', 'view' or 'delete': "
    # get_answer
	end

	def get_answer
		answer = gets.chomp
	end

	def add_contact(contact_name, contact_number)
		puts "You added #{contact_name} and #{contact_number}"
	end

	def edit_contact
		print "name of contact to edit: "
		contact_name = gets.chomp
		print "field to edit - type 'name' or 'number': "
		edit_field = gets.chomp
		print "edit to: "
		new_value = gets.chomp
		puts "editing..."
		{   contact_name:contact_name,
			field:edit_field,
			new_value:new_value	}
	end

  def contact_error(contact_name)
    puts "Sorry, can't find #{contact_name} in contacts."
  end

  def delete_contact(contact_name)
    puts "#{contact_name} has been deleted from your contact list."
  end

  def view_contacts(contacts)
    contacts.contact_list.each do |key, value|
      puts "#{value.name}, #{value.number}"
    end
  end

  def display_search_result(contact)
    puts "#{contact.name}, #{contact.number}"
  end
end
