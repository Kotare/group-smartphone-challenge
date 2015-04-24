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
end
