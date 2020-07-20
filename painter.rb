class Painter
    attr_reader :name, :age
    @@all = []
    def initialize (name, age)
        @name = name
        @age = age
        @@all << self
    end
    def self.all
        @@all
    end
    def painter_artwork
        Painter_Artwork.all.select{
            |painter_artwork| painter_artwork.painter == self 
        }
    end
    def artwork
        self.painter_artwork.map {
            |painter_artwork| painter_artwork.artwork
        }
    end
end