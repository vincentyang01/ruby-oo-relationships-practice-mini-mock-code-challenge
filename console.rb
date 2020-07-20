require 'pry'
require_relative './painter'
require_relative './artwork'
require_relative './painter_artwork'

painter1 = Painter.new("ace", 10)
painter2 = Painter.new("bob", 20)
painter3 = Painter.new("cal", 30)

artwork1 = Artwork.new("Mona Lisa")
artwork2 = Artwork.new("Trees")
artwork3 = Artwork.new("Grove")

pa1 = Painter_Artwork.new(painter1, artwork1)
pa2 = Painter_Artwork.new(painter2, artwork2)
pa3 = Painter_Artwork.new(painter3, artwork3)

binding.pry