class SmartphoneView

	def welcome
      puts "Welcome to COW PHONE"
      puts "What would you like to do today? type 'add', 'edit', 'display' or 'delete': "
      get_answer
	end

	def get_answer
		answer = gets.chomp
		p answer
	end

	def add_contact
		# returns enumerable of contact stuff
	end

	def edit_contact
		#
	end

  def contact_error(contact_name)
    puts "Sorry, can't find #{contact_name} in contacts."
  end

  def delete_contact(contact_name)
    puts "#{contact_name} has been deleted from your contact list."
  end

  def view_contacts(contacts)
    contacts.each do |contact|
      puts "#{contact["name"].name}, #{contact["name"].number}"
    end
  end

  def display_search_result(contact)
    puts "#{contact.name}, #{contact.number}"
  end
end
