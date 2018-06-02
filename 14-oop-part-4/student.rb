require_relative 'person'

class Student < Person

    Level = 10
    def initialize(f,l)
        super(f,l)
        @knowledge_level = Level
    end

    def learn
        @knowledge_level += 10
        # if(@knowledge_level > 30)
        #     levelup
        # end
    end

    def slack
        @knowledge_level -=5 if @knowledge_level >5
    end

    def bonus(m)
        @knowledge_level +=m
    end

    private
    def levelup
        @knowledge_level = 100
    end
end

