class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :notes

  @@contacts = []
  @@next_id  = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes
    @id         = @@next_id

    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = Contact.new(first_name, last_name, email, notes)
    @@contacts << new_contact
    new_contact
  end

  def self.find(id)
    # Exercise left to the student
    # Make sure to return ONE instance of Contact
  end

  # Instance Method
  def full_name
    "#{ @first_name } #{ @last_name }"
  end

end
