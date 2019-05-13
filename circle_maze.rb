require 'polar_grid'
require 'recursive_backtracker'

grid = PolarGrid.new(25)
RecursiveBacktracker.on(grid)

filename = 'images/circle_maze.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
