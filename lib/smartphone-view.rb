class SmartphoneView

	def welcome
		system("clear")
    puts "********************Welcome to COW PHONE!********************"
    puts
    ascii_cowphone = <<-TEMPLATE
                                       /;    ;\\	     __i
      -Bill Ames-                  __  \\____//	    |---|
                                  /{_\\_/   `'\\_     |[_]|
                                  \\___   (o)  (o}   |:::|
       _____________________________/          :-   |:::|
   ,-,'`@@@@@@@@       @@@@@@         \\_    `__\\    `\\   \\
  ;:(  @@@@@@@@@        @@@             \\___(o'o)     \\_=_\\
  :: )  @@@@          @@@@@@        ,'@@(  `===='
  :: : @@@@@:          @@@@         `@@@:
  :: \\  @@@@@:       @@@@@@@)    (  '@@@'
  ;; /\\      /`,    @@@@@@@@@\\   :@@@@@)
  ::/  )    {_----------------:  :~`,~~;
 ;;'`; :   )                  :  / `; ; 			jsm
;;;; : :   ;                  :  ;  ; :
`'`' / :  :                   :  :  : :
    )_ \\__;      ";"          :_ ;  \\_\\       `,','
    :__\\  \\    * `,'*         \\  \\  :  \\   *  8`;'*
        `^'     \\ :/           `^'  `-^-'
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
_____________________________________________________________
    TEMPLATE
    puts ascii_cowphone
    puts

	end

	def get_answer
    puts "Welcome to COW PHONE!"
    puts "\nWhat would you like to do today? type 'add', 'edit', 'view' or 'delete': "
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
		if edit_field == 'name' || edit_field == 'number'
			return {   	contact_name:contact_name,
									field:edit_field,
									new_value:new_value	}
		else
			puts "not a valid field"
			edit_contact
		end
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
    contacts.contact_list.each do |key, value|
      puts "#{value.name}, #{value.number}"
    end
  end

  def display_search_result(contact)
    puts "#{contact.name}, #{contact.number}"
  end

  def exit
    ascii_cow_goodbye = <<-TEMPLATE
    puts ******************--GOODBYE!--******************
                  _     _
                 (_\\___( \\,
                   )___   _  later bro
                  /( (_)-(_)    /
       ,---------'         \\_
     //(  ',__,'      \\  (' ')
    //  )              '----'
   '' ; \\     .--.  ,/
      | )',_,'----( ;
      ||| '''     '||

    TEMPLATE
    puts ascii_cow_goodbye

  end
end
