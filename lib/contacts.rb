class Contacts
  attr_reader :contact_list

  def initialize
    @contact_list = {}
  end

  def delete_contact(contact_name)
    @contact_list.delete(contact_name)
  end

  def search(contact_name)
    @contact_list[contact_name]
  end
end
