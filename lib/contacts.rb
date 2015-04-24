class Contacts

  def initialize
    @contact_list = {}
  end

  def delete_contact(contact_name)
    @contact_list.delete(contact_name)
  end

end
