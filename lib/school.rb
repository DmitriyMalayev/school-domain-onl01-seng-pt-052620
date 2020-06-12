class School
    attr_accessor :name, :roster  

    def initialize(name)
        @name = name 
        @roster = {} 
     end 

     def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] << name 
        else
            @roster[grade] = [name] 
        end 
        @roster
    end 

    def grade(g)
        @roster[g]
    end 

    def sort
        new_hash = {} 
        @roster.each do |grade|
            new_hash = [grade]   
            new_hash.sort 
        end 
    end

end 