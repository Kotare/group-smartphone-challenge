class SmartphoneView

	def welcome
    puts "Welcome to COW PHONE!"
    puts "\nWhat would you like to do today? type 'add', 'edit', 'display' or 'delete': "
    # get_answer
	end

	def get_answer
		answer = gets.chomp
	end

	def add_contact
		puts "What is your contact name?"
		puts "What is your contact number?"
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

  def input_error
    puts "Sorry, invalid input."
  end

  def delete_contact(contact_name)
    puts "What is the name of the contact you'd like to delete?"
    name = gets.chomp
    puts "#{contact_name} has been deleted from your contact list."
    name
  end

  def view_contacts(contacts)
    contacts.each do |contact|
      puts "#{contact["name"].name}, #{contact["name"].number}"
    end
  end

  def display_search_result(contact)
    puts "#{contact.name}, #{contact.number}"
  end

  def exit
    ascii_cow_goodbye = <<-TEMPLATE
    puts ******************--GOODBYE!--******************
                  _     _
                 (_\___( \,
                   )___   _  later bro
                  /( (_)-(_)    /
       ,---------'         \_
     //(  ',__,'      \  (' ')
    //  )              '----'
   '' ; \     .--.  ,/
      | )',_,'----( ;
      ||| '''     '||

    TEMPLATE
    puts ascii_cow_goodbye

  end
end
