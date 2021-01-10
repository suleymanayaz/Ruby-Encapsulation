class EncapsulationExample
    def initialize
     @value = 5
    end
    def getvalue
        @value
    end
    def setvalue(value)
        @value = value
    end
end
def main
    p = EncapsulationExample.new()
   # puts  p.value 
   # In Ruby, variables within the class are automatically always private outside of the class instance (object) variables.
    puts p.getvalue
   # We can define getter method and access it indirectly.
    p.setvalue(6)
   # We can define, access and change with setter method
    puts p.getvalue
end
main
# We call the main method that contains the operations we have done
