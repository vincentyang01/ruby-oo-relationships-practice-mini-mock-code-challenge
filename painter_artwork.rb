class Painter_Artwork
    attr_reader :painter, :artwork
    @@all = []
    def initialize (painter, artwork)
        @painter = painter
        @artwork = artwork
        @@all << self
    end
    def self.all
        @@all
    end

end