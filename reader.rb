class Insan 
   attr_reader :cinsiyet, :yasi, :isim
   # bunu yazmamız bize direk erişim sağlıyor
   # yani bir getter methoduna gerek yok
       def initialize (cinsiyet,yasi,isim)
            @cinsiyet = cinsiyet
            @yasi = yasi
            @isim = isim
        end

end
def main
    sulo = Insan.new("erkek",19,"suleyman")
    puts sulo.yasi
    puts sulo.cinsiyet
    puts sulo.isim
    # Göründüğü gibi direk olışan nesneden erişebiliyoruz.
end
main
# Neden bir main methodu yazdık ana yapılan işlemleri bir arada tutmak için
# Sonrada göründüğü gibi direk çağırdık.
