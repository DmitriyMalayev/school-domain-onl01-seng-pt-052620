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
        @roster.each do |grade, name|
            @roster[grade] = name.sort    
        end   
    end

end 