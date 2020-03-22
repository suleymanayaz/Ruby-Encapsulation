class Insan 
    attr_reader :yas, :isim, :cinsiyet
    attr_writer :yas, :isim, :cinsiyet
    def initialize(yas,isim,cinsiyet)
        @yas = yas
        @isim = isim
        @cinsiyet = cinsiyet
    end

    def >(other)
        #Burada bir overload  gözüküyor
        #overload olan simge > budur 
        @yas > other.yas
    end

    def ==(other)
        #Burada da bir overload gözüküyor
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
    puts sulo.isim + " " + murat.isim + "'dan yaşca " + (sulo.yas > murat.yas ? 'buyuktur.' : 'kucuktur.')
    # Gözüktüğü üzere yapmış oldugumuz overload sayesinde aslında > operatörünü değiştirmiş olduk..
    puts sulo.isim + " " + gizem.isim + "'den yaşca " +(sulo.yas > gizem.yas ? 'buyuktur.' : 'kucuktur. ')
    puts sulo.isim + " " + murat.isim + " adaş" +(sulo.isim == murat.isim ? 'lar.' : ' değiller.' )
    # Gözüktüğü üzere buradada yapmış oldugumuz overlad sayesinde == operatorunu değiştirmiş olduk ..
    puts sulo.isim + " " + gizem.isim + " adaş" +(sulo.overad(gizem) ? 'lar.' : ' değiller.' )
    puts sulo.isim + " " + murat.isim + " hemcins" +(sulo.equalgender(murat) ? 'ler.' : ' değiller.')
    puts sulo.isim + " " + gizem.isim + " hemcins" +(sulo.equalgender(gizem) ? 'ler.' : ' değiller.')
end
main
