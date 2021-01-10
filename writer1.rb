class Human
    attr_reader :age, :name, :gender
    attr_writer :age, :name, :gender
    def initialize(age,name,gender)
        @yas = age
        @isim = name
        @cinsiyet = gender
    end

    def >(other)
        # An overload appears here, the icon is overload> this is
        @age > other.age
    end

    def ==(other)
        # An overload appears here, the icon is overload == this is
        @name == other.name
    end

    def equalGender(other)
        @gender == other.gender
    end

end
def main
    sulo = Human.new(19,"Suleyman","Male")
    murat = Human.new(20,"Murat","Male")
    gizem = Human.new(18,"Gizem","Female")
    puts sulo.name + " " + murat.name + "'dan yaşca " + (sulo.age > murat.age ? 'buyuktur.' : 'kucuktur.')
    # Thanks to the overload we made as it seems, we actually changed the > operator.
    puts sulo.name + " " + gizem.name + "'den yaşca " +(sulo.age > gizem.age ? 'buyuktur.' : 'kucuktur. ')
    puts sulo.name + " " + murat.name + " aynı yaşta" +(sulo.age == murat.age ? 'lar.' : ' değiller.' )
    # Thanks to the overload we made as it seems, we actually changed the == operator.
    puts sulo.name + " " + gizem.name + " aynı yaşta" +(sulo.age == gizem.age ? 'lar.' : ' değiller.' )
    puts sulo.name + " " + murat.name + " hemcins" +(sulo.equalGender(murat) ? 'ler.' : ' değiller.')
    puts sulo.name + " " + gizem.name + " hemcins" +(sulo.equalGender(gizem) ? 'ler.' : ' değiller.')
end
main
