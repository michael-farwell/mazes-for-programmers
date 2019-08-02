require 'cube_grid'
require 'recursive_backtracker'

grid = CubeGrid.new(10)
RecursiveBacktracker.on(grid)

filename = 'images/cube.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
