class Person

  # Built-In
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  # ATTRIBUTE READER
  def first_name
    @first_name
  end

  # ATTRIBUTE READER
  def last_name
    @last_name
  end

  # ATTRIBUTE WRITER
  def first_name=(first_name)
    @first_name = first_name
  end

  # ATTRIBUTE WRITER
  def last_name=(last_name)
    @last_name = last_name
  end

  # Regular Instance Method
  def full_name
    # First term accesses the instance variable
    # Second term accesses the instance method
    "#{ @first_name } #{ last_name }"
  end

  # Regular Instance Method
  def greetings
    "Hi, my name is #{ full_name }"
  end

end
