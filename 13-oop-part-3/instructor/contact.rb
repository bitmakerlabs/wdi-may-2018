class Contact

  @@contacts = []
  @@next_id = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes

    @id = @@next_id
    @@next_id += 1
  end

  # Class Method
  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = self.new(first_name, last_name, email, notes)
    new_contact.save
    new_contact
  end

  def self.find(id)
    # Iterate through the list of contacts (@@contacts)
    # Find the particular instance matching the id argument
    # Return that instance

    # Left to the student as an exercise
  end

  # INSTANCE ATTRIBUTE READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # INSTANCE ATTRIBUTE WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  def full_name
    # THIS WILL WORK!!!! (Ask yourself why?)
    "#{ first_name } #{ @last_name }"
  end

  def save
    @@contacts << self
  end
end
