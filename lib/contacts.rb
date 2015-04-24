class Contacts
  attr_reader :contact_list

  def initialize
    @contact_list = {}
  end
  def add_contact(contact_name, contact_number)
    @contact_list[contact_name] = Contact.new(contact_name, contact_number)
  end

  def delete_contact(contact_name)
    @contact_list.delete(contact_name)
  end

  def search(contact_name)
    @contact_list[contact_name]
  end

  def edit_contact(args)
    name = args[:contact_name]
    number = @contact_list[name].number
    delete_contact(args[:contact_name])
    case args[:field]
    when 'name'
      add_contact(args[:new_value], number)
    when 'number'
      add_contact(name, args[:new_value])
    end
  end
end
