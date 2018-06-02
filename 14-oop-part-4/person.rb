class Person
    
    def initialize(firstname,lastname)
        @firstname = firstname
        @lastname = lastname
    end

    def firstname
        @firstname
    end

    def fullname
        "#{@firstname } #{@lastname}"
    end
end

# frank = Person.new("Frank","Sinatra")
# frank.fullname