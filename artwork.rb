class Artwork
    attr_reader :title
    @@all = []
    def initialize (title)
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end

    def painter_artwork
        Painter_Artwork.all.select {
            |painter_artwork| painter_artwork.artwork == self
        }
    end

    def painter
        self.painter_artwork.map {
            |painter_artwork| painter_artwork.artwork
        }
    end
end