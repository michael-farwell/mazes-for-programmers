require 'grid3d'
require 'recursive_backtracker'

grid = Grid3D.new(3, 10, 10)

RecursiveBacktracker.on(grid)

filename = 'images/3d.png'
grid.to_png(cell_size: 20).save(filename)
puts "saved to #{filename}"
