require 'polar_grid'

grid = PolarGrid.new(25)

filename = 'images/polar.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
