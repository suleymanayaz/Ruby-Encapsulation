class Peki
    
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
    p = Peki.new()
   #puts  p.value 
   # Ruby de sınıf içindeki değişkenler otomatik olarak
   # class dışından her zaman private oluyor instance(nesne) variablelar
    puts p.getvalue
   # getter methodu tanımlayıp direk erişebiliriz
    p.setvalue(6)
   # setter methodu ile tanımlayıp direk erişip degiştire biliriz
    puts p.getvalue
end
main