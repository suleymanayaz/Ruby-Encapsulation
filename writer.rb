class Insan 
    attr_reader :yas, :isim, :cinsiyet
    attr_writer :yas, :isim, :cinsiyet
    # bunu yazmamız bize direk değiştirme olanağı sağlıyor
    # yani setter methodu yazmamıza gerek kalmıyor.
    # yada bunları yazmak yerine ;
    # attr_accessor :yas, :isim, :cinsiyet 
    # sadece bunu yazarsak bize hem get etme hemde set etme ozelligini sağlar.
    def initialize(yas,isim,cinsiyet)
        #constructer method
        @yas = yas
        @isim = isim
        @cinsiyet = cinsiyet
    end

    def thanbig(other)
        @yas > other.yas
    end

    def overad(other)
        @isim == other.isim
    end

    def equalgender(other)
        @cinsiyet == other.cinsiyet
    end

end
def main
    sulo = Insan.new(19,"Suleyman","Erkek")
    murat = Insan.new(20,"Murat","Erkek")
    gizem = Insan.new(18,"Gizem","Kadın")
    puts sulo.isim + " " + murat.isim + "'dan yaşca " + (sulo.thanbig(murat) ? 'buyuktur.' : 'kucuktur.')
    puts sulo.isim + " " + gizem.isim + "'den yaşca " +(sulo.thanbig(gizem) ? 'buyuktur.' : 'kucuktur. ')
    puts sulo.isim + " " + murat.isim + " adaş" +(sulo.overad(murat) ? 'lar.' : ' değiller.' )
    puts sulo.isim + " " + gizem.isim + " adaş" +(sulo.overad(gizem) ? 'lar.' : ' değiller.' )
    puts sulo.isim + " " + murat.isim + " hemcins" +(sulo.equalgender(murat) ? 'ler.' : ' değiller.')
    puts sulo.isim + " " + gizem.isim + " hemcins" +(sulo.equalgender(gizem) ? 'ler.' : ' değiller.')
end
main