class Human 
   attr_reader :gender, :age, :name
   # Doing this gives us direct access so there is no need for a getter method.
       def initialize (gender,age,name)
          # Constructer method
            @gender = gender #(Instance variable) = (local variable)
            @age = age       #(Instance variable) = (local variable)
            @name = name     #(Instance variable) = (local variable)
        end
end
def main
    sulo = Insan.new("Male",19,"Suleyman")
    puts sulo.age
    puts sulo.gender
    puts sulo.name
    # We can access directly from the created object as it appears.
end
main
# We wrote a main method and called it to keep the operations together and perform its function.

