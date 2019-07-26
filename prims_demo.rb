require 'prims'
require 'grid'

grid = Grid.new(20, 20)
SimplifiedPrims.on(grid)
# TruePrims.on(grid)

filename = 'images/simple.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
