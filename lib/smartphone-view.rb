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
		#
	end

  def delete_contact(contact_name)
    puts "#{contact_name} has been deleted from your contact list."
  end
end
