class School
    # attr_accessor :name 
    # attr_reader :grade, :sort


    def initialize(name)
        @name = name 
        @roster = {} 
     end 

     def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] = [name]
        else 
            @roster[grade][name]  
        end       
     end 

     def roster 
        @roster 
     end 
end 

# new_hash = {} 
# new_hash{:roster => 1} 

# Hash.ne