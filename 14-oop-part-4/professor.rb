require_relative 'person'

class Professor < Person

    def initialize(f,l)
        super(f,l)
    end

    def fullname
        p"Prof.#{super}"
    end

    def teach(student)
        student.learn
    end

    def teachCohort(students)
        students.each{|s| s.learn}
    end

    def finalMarks(m,students)
        calcBonus(m,students)
    end

    private
    def calcBonus(m,students)
        students.each{|s| s.bonus(m)}
    end

end