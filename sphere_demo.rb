require 'sphere_grid'
require 'recursive_backtracker'

grid = SphereGrid.new(20)
RecursiveBacktracker.on(grid)

filename = 'images/sphere-map.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
